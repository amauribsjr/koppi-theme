#!/usr/bin/env bash
set -euo pipefail

if git rev-parse --show-toplevel >/dev/null 2>&1; then
  cd "$(git rev-parse --show-toplevel)"
fi

fail() {
  echo "error: $*" >&2
  exit 1
}

log_step() {
  echo "==> $*"
}

required_files=(
  "palette/koppi.json"
  "palette/koppi.nix"
  "palette/koppi.css"
  "palette/koppi.scss"
  "ports/bat/koppi.tmTheme"
  "ports/btop/koppi.theme"
  "ports/delta/koppi.gitconfig"
  "ports/fzf/koppi.sh"
  "ports/lazygit/koppi.yml"
  "ports/starship/koppi.toml"
  "ports/tmux/koppi.conf"
  "ports/yazi/koppi.toml"
  "ports/alacritty/koppi.toml"
  "ports/foot/koppi.ini"
  "ports/ghostty/koppi"
  "ports/gtklock/koppi.css"
  "ports/helix/koppi.toml"
  "ports/kitty/koppi.conf"
  "ports/neovim/colors/koppi.lua"
  "ports/regreet/koppi.css"
  "ports/vscode/package.json"
  "ports/vscode/themes/koppi-color-theme.json"
  "ports/waybar/koppi.css"
  "ports/wezterm/koppi.lua"
  "ports/wofi/koppi.css"
  "ports/zed/koppi.json"
  "docs/palette.md"
  "docs/porting.md"
  "docs/releases.md"
  "docs/screenshots.md"
  "CONTRIBUTING.md"
  "README.md"
  "CHANGELOG.md"
  "LICENSE"
  ".github/ISSUE_TEMPLATE/bug_report.md"
  ".github/ISSUE_TEMPLATE/port_request.md"
  ".github/pull_request_template.md"
  ".github/workflows/check.yml"
)

json_files=(
  "palette/koppi.json"
  "ports/zed/koppi.json"
  "ports/vscode/package.json"
  "ports/vscode/themes/koppi-color-theme.json"
)

toml_files=(
  "ports/alacritty/koppi.toml"
  "ports/helix/koppi.toml"
  "ports/starship/koppi.toml"
  "ports/yazi/koppi.toml"
)

lua_files=(
  "ports/neovim/colors/koppi.lua"
  "ports/wezterm/koppi.lua"
)

log_step "Checking required files"
for file in "${required_files[@]}"; do
  [[ -f "$file" ]] || fail "Missing required file: $file"
  [[ -s "$file" ]] || fail "Required file is empty: $file"
done

log_step "Checking Nix flake palette export"
nix eval .#lib.colors.accent >/dev/null || fail "Nix flake color export failed"

validate_json() {
  local file="$1"
  nix eval --impure --expr "builtins.fromJSON (builtins.readFile ./${file})" >/dev/null \
    || fail "Invalid JSON: $file"
}

validate_toml() {
  local file="$1"
  nix eval --impure --expr "builtins.fromTOML (builtins.readFile ./${file})" >/dev/null \
    || fail "Invalid TOML: $file"
}

validate_lua() {
  local file="$1"
  if command -v lua >/dev/null 2>&1; then
    lua -e "assert(loadfile('${file}'))" >/dev/null \
      || fail "Invalid Lua syntax: $file"
  else
    nix run nixpkgs#lua -- -e "assert(loadfile('${file}'))" >/dev/null \
      || fail "Invalid Lua syntax: $file"
  fi
}

log_step "Validating JSON files"
for file in "${json_files[@]}"; do
  validate_json "$file"
done

log_step "Validating TOML files"
for file in "${toml_files[@]}"; do
  validate_toml "$file"
done

log_step "Validating Lua files"
for file in "${lua_files[@]}"; do
  validate_lua "$file"
done

log_step "Checking for user-specific paths in public ports"
if grep -RInE '(/home/[A-Za-z0-9._-]+|/Users/[A-Za-z0-9._-]+)' ports palette 2>/dev/null; then
  fail "Found user-specific path in public theme files"
fi

log_step "Checking for temporary files"
if find ports palette docs .github scripts -type f \( -name '*.tmp' -o -name '*.bak' -o -name '*~' \) | grep -q .; then
  find ports palette docs .github scripts -type f \( -name '*.tmp' -o -name '*.bak' -o -name '*~' \)
  fail "Found temporary or backup files"
fi

log_step "Checking color consistency against palette/koppi.nix"
palette_colors="$(mktemp)"
used_colors="$(mktemp)"
trap 'rm -f "$palette_colors" "$used_colors"' EXIT

grep -Eoh '"[0-9a-fA-F]{6}([0-9a-fA-F]{2})?"' palette/koppi.nix \
  | tr -d '"' \
  | tr '[:upper:]' '[:lower:]' \
  | sort -u > "$palette_colors"

if [[ ! -s "$palette_colors" ]]; then
  fail "Could not extract colors from palette/koppi.nix"
fi

grep -RhoE '#[0-9a-fA-F]{6}([0-9a-fA-F]{2})?' ports palette/koppi.json palette/koppi.css palette/koppi.scss 2>/dev/null \
  | tr -d '#' \
  | tr '[:upper:]' '[:lower:]' \
  | sort -u > "$used_colors"

bad_colors=0
while IFS= read -r color; do
  [[ -n "$color" ]] || continue
  base="${color:0:6}"
  if grep -Fxq "$color" "$palette_colors" || grep -Fxq "$base" "$palette_colors"; then
    continue
  fi
  echo "Unexpected color outside Koppi palette: #${color}" >&2
  bad_colors=1
done < "$used_colors"

if [[ "$bad_colors" -ne 0 ]]; then
  fail "Found colors outside the canonical palette"
fi

log_step "Koppi repository check passed"
