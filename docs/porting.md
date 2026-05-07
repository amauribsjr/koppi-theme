# Porting Koppi

Avoid this in public ports:

```css
font-family: "JetBrainsMono Nerd Font";
```

The first form keeps Koppi's intended look while still working on systems without the preferred font.

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
