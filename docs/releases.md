# Release Policy

Koppi follows semantic versioning while it is in the `0.x` series, with a pragmatic early-project policy.

## Version meaning before 1.0.0

| Version range | Meaning                                      |
|---------------|----------------------------------------------|
| `0.1.x`       | Initial public bootstrap                     |
| `0.2.x`       | Terminal port expansion                      |
| `0.3.x`       | Editor port expansion                        |
| `0.4.x`       | Documentation and contribution readiness     |
| `0.5.x`       | Validation and consistency checks            |
| `0.6.x`       | CLI/TUI ports                                |
| `0.7.x`       | Portable palette exports                     |
| `0.8.x`       | Visual previews and screenshots             |
| `0.9.x`       | Nix package and Home Manager integration     |
| `1.0.0`       | Stable palette and stable public structure   |

## When to create a release

Create a release when there is a coherent user-facing change, such as:

- a new port;
- a new installation path;
- a documentation milestone;
- a validation improvement;
- a compatibility fix;
- a palette or public-structure change.

Avoid releases for every tiny README typo or internal-only adjustment.

## Published tags

Once a tag is pushed and used for a GitHub release, treat it as immutable.

Do not rewrite published tags. If a published release contains a mistake, create a patch release instead.

Example:

- `v0.3.0` introduces editor ports;
- if a file is incomplete, fix it in `v0.3.1` instead of rewriting `v0.3.0`.

## Before publishing

Before publishing a release:

```bash
./scripts/check.sh
git status --short
git log --oneline --decorate -5
```

Then:

```bash
git tag -a vX.Y.Z -m "Koppi vX.Y.Z"
git push origin main
git push origin vX.Y.Z
```