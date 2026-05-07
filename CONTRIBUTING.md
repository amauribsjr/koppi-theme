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

## New ports

When adding a new port:

1. Add the port under `ports/<app>/`.
2. Use the Koppi palette as the source of truth.
3. Avoid unrelated colors.
4. Add installation instructions to `README.md`.
5. Add the file to `scripts/check.sh`.
6. Update `CHANGELOG.md`.
7. Add a screenshot if practical.

## Commit style

This repository uses Conventional Commits.

Examples:

```text
feat(alacritty): add Koppi terminal theme
feat(neovim): add Koppi colorscheme
fix(gtklock): remove user-specific wallpaper path
docs(palette): document color roles
chore(checks): add repository validation script
```

## Pull requests

A pull request should describe:

- what port or document was changed;
- why the change is needed;
- whether the palette was changed;
- whether screenshots were added or updated.

Run this before opening a pull request:

```bash
./scripts/check.sh
```