# Contributing

Contributions are welcome, especially new ports.

## Guidelines

- Use the canonical palette from `palette/koppi.json` or `palette/koppi.nix`.
- Keep ports theme-focused.
- Avoid full application configs when a theme-only file is possible.
- Avoid personal paths and machine-specific assumptions.
- Use fallback fonts in public CSS.
- Add screenshots for new visual ports when practical.
- Keep files readable and manually editable.

## Commit style

This repository uses Conventional Commits.

Examples:

```text
feat(alacritty): add Koppi terminal theme
feat(neovim): add Koppi colorscheme
fix(gtklock): remove user-specific wallpaper path
docs(palette): document color roles
chore(checks): add repository validation script