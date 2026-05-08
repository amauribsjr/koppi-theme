# Changelog

## 0.9.0

Added:

- `ports/yazi/koppi.toml` — file manager color theme for yazi.
- `ports/starship/koppi.toml` — prompt theme for Starship.
- `ports/tmux/koppi.conf` — status bar and pane theme for tmux.
- `docs/screenshots.md` — screenshot standards document defining format,
  resolution, reference content and naming conventions.
- Installation instructions for all three new ports in README.
- All three new port files added to repository validation in `scripts/check.sh`.

## 0.8.1

Fixed:

- Completed `ports/regreet/koppi.css` — was marked Initial due to missing entry
  widgets, labels, hover/focus states, error styling, session selector and scrollbars.
  Now marked Available.

## 0.8.0

Added:

- `ports/bat/koppi.tmTheme` — TextMate syntax theme for bat.
- `ports/btop/koppi.theme` — color theme for btop++.
- `ports/delta/koppi.gitconfig` — gitconfig snippet for delta git diff pager.
- `ports/fzf/koppi.sh` — shell environment variables for fzf.
- `ports/lazygit/koppi.yml` — GUI theme for lazygit.
- Installation instructions for all five new ports in README.
- All five new port files added to repository validation in `scripts/check.sh`.

## 0.7.0

Added:

- `palette/koppi.css` — full Koppi palette as CSS custom properties for use in any
  web or CSS-based theming context without a Nix dependency.
- `palette/koppi.scss` — full Koppi palette as SCSS variables for use in SCSS projects.
- Portable usage section in README documenting CSS and SCSS consumption.
- `palette/koppi.css` and `palette/koppi.scss` added to repository validation in
  `scripts/check.sh`.

Token names follow the canonical palette with camelCase converted to kebab-case
(`bgLine` → `--koppi-bg-line`, `fgMuted` → `--koppi-fg-muted`).

## 0.6.0

Changed:

- Removed alias tokens with no distinct color value: `orange`, `teal`, `redsoft`, `slate`.
  These tokens were identical in hex to existing canonical tokens (`accent`, `fgMuted`,
  `accdim`, `bg1`) and added noise without semantic value.
- Formalized the terminal color design decision: `blue`, `magenta`, `cyan` and their bright
  variants are intentionally mapped to neutral grays. This is documented in `docs/palette.md`
  and is a stable design choice, not an oversight.

## 0.5.3

Fixed:

- Added missing CHANGELOG entry for 0.5.2.

## 0.5.2

Fixed:

- Marked Neovim and VS Code roadmap items as completed in README.
- Corrected flake input URL in README (amauri → amauribsjr).
- Removed duplicate Waybar, Wofi and gtklock installation sections from README.
- Restored missing Background section header, table header, and bg/bg1 rows in docs/palette.md.
- Added design note explaining intentional neutral mapping of terminal blue/magenta/cyan in docs/palette.md.
- Fixed font guidance in docs/porting.md: restored missing alternative example and corrected reference from "first form" to "second form".

## 0.5.1

Fixed:

Restored the complete Waybar CSS port.
Fixed missing @define-color declarations in ports/waybar/koppi.css.
Prevented undefined GTK CSS color references in the Waybar port.

## 0.5.0

Added:

- Stronger repository validation script.
- GitHub Actions workflow for automated checks.
- Required-file validation for palette, ports, docs and GitHub templates.
- JSON validation using Nix builtins.
- TOML validation using Nix builtins.
- Lua syntax validation for Lua-based ports.
- User-specific path detection in public theme files.
- Color consistency check against the canonical Koppi palette.

Changed:

- Improved release safety by checking for missing, empty, invalid or inconsistent port files before publishing.

## 0.4.0

Added:

- Palette documentation.
- Porting guidelines.
- Release policy documentation.
- Contribution guidelines.
- Bug report issue template.
- Port request issue template.
- Pull request template.

Changed:

- Improved project documentation for public usage and contribution readiness.

## 0.3.1

Fixed:

Restored the complete Neovim colorscheme port.
Restored the complete VS Code theme port.
Fixed invalid/truncated editor theme files from 0.3.0.

Changed:

Normalized Waybar CSS port formatting without changing the palette.

## 0.3.0

Added:

- Neovim colorscheme port.
- VS Code theme port.

Changed:

- Updated README with editor port installation instructions.
- Extended repository validation for the new editor ports.


## 0.2.0

Added:

- Alacritty terminal port.
- Foot terminal port.
- WezTerm terminal port.
- Ghostty terminal port.

Changed:

- Updated README with terminal port installation instructions.
- Extended repository validation for new terminal ports.

## 0.1.3

Added:

- Palette documentation.
- Porting guidelines.
- Contribution guidelines.
- Basic repository validation script.
- GitHub Actions workflow for repository checks.

Changed:

- Improved public-port portability with font fallbacks.

## 0.1.2

Fixed:

- Removed user-specific wallpaper path from the gtklock port.

## 0.1.1

Added:

- Kitty port.
- Wofi port.

Changed:

- Updated README to reflect current port status.
- Added available screenshots to the preview section.
- Linked Bayer's GitHub profile.

## 0.1.0

Initial public version of Koppi.

Added:

- Canonical Koppi palette.
- Nix palette export.
- Initial ports for editors, terminal and Wayland desktop components.
