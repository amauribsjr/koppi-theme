# Porting Koppi

| UI role              | Koppi color |
|----------------------|-------------|
| Main background      | `bg`        |
| Secondary background | `bg1`       |
| Hover background     | `bg2`       |
| Border               | `bg3`       |
| Disabled UI          | `bg4`       |
| Main text            | `fg`        |
| Muted text           | `fgMuted`   |
| Subtle text          | `fgSubtle`  |
| Punctuation          | `fgSubtle`  |
| Selection            | `bgSelect`  |
| Primary accent       | `accent`    |
| Bright accent        | `accbrt`    |
| Error                | `bred`      |
| Warning              | `warning`   |
| Success              | `bgreen`    |

## Terminal mapping

| ANSI role      | Koppi color |
|----------------|-------------|
| black          | `black`     |
| red            | `red`       |
| green          | `green`     |
| yellow         | `yellow`    |
| blue           | `blue`      |
| magenta        | `magenta`   |
| cyan           | `cyan`      |
| white          | `white`     |
| bright black   | `bblack`    |
| bright red     | `bred`      |
| bright green   | `bgreen`    |
| bright yellow  | `byellow`   |
| bright blue    | `bblue`     |
| bright magenta | `bmagenta`  |
| bright cyan    | `bcyan`     |
| bright white   | `bwhite`    |

## CSS font guidance

Prefer this:

```css
font-family: "JetBrainsMono Nerd Font", monospace;
```

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