#!/usr/bin/env bash
set -euo pipefail

required_files=(
  "palette/koppi.json"
  "palette/koppi.nix"
  "ports/helix/koppi.toml"
  "ports/zed/koppi.json"
  "ports/kitty/koppi.conf"
  "ports/waybar/koppi.css"
  "ports/wofi/koppi.css"
  "ports/gtklock/koppi.css"
  "ports/regreet/koppi.css"
  "ports/alacritty/koppi.toml"
  "ports/foot/koppi.ini"
  "ports/wezterm/koppi.lua"
  "ports/ghostty/koppi"
  "docs/palette.md"
  "docs/porting.md"
  "CONTRIBUTING.md"
  "README.md"
  "CHANGELOG.md"
  "LICENSE"
)

for file in "${required_files[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "Missing required file: $file" >&2
    exit 1
  fi
done

nix eval .#lib.colors.accent >/dev/null

if grep -R "/home/koppi" ports README.md docs 2>/dev/null; then
  echo "Found user-specific path in public files." >&2
  exit 1
fi

echo "Koppi repository check passed."
