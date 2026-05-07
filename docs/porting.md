# Porting Koppi

Avoid hardcoding a single font without fallbacks in public ports:

```css
/* Avoid this */
font-family: "JetBrainsMono Nerd Font";

/* Prefer this */
font-family: "JetBrainsMono Nerd Font", "Noto Sans Mono", monospace;
```

The second form keeps Koppi's intended look on systems that have the preferred font installed,
while still rendering correctly on systems that do not.

## Wallpaper guidance

Do not hardcode personal wallpaper paths.

Prefer this:

```css
/* Optional: set your own wallpaper path. */
/* background-image: url("/path/to/wallpaper.png"); */
```

## What a port should include

A port should include theme-related values only when possible.

Good examples:

- editor color theme files;
- terminal color palettes;
- CSS theme files for bars, launchers, lock screens and greeters;
- syntax highlighting definitions;
- color variables.

Avoid including personal behavior by default:

- keybinds;
- shell commands;
- machine-specific paths;
- user names;
- full app configs when a theme-only file is possible.

## New port checklist

Before submitting or releasing a new port:

- [ ] The port uses Koppi palette colors.
- [ ] The port avoids personal paths.
- [ ] The port avoids unnecessary full-app configuration.
- [ ] The port has a clear installation note in `README.md`.
- [ ] The port is added to `scripts/check.sh`.
- [ ] A screenshot is added when practical.
- [ ] `CHANGELOG.md` mentions the new port.
