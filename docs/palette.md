# Koppi Palette

Koppi is a warm, muted, low-to-medium contrast dark palette.

The canonical palette lives in:

- `palette/koppi.json`
- `palette/koppi.nix`

Ports should derive their colors from these files instead of introducing unrelated hex values.

## Background colors

| Name         | Hex       | Intended usage                         |
|--------------|-----------|----------------------------------------|
| `bg`         | `#2e2e2e` | Main background                        |
| `bg1`        | `#383838` | Panels, cards, active lines            |
| `bg2`        | `#434343` | Hover states, soft selections          |
| `bg3`        | `#535353` | Borders, separators                    |
| `bg4`        | `#646464` | Disabled UI, low-priority elements     |
| `bgLine`     | `#353535` | Current line, subtle line highlights   |
| `bgIndent`   | `#3a3a3a` | Indent guides                          |
| `bgDim`      | `#404040` | Dimmed surfaces                        |
| `bgSelect`   | `#4e4e4e` | Stronger selection background          |

## Foreground colors

| Name         | Hex       | Intended usage                         |
|--------------|-----------|----------------------------------------|
| `fg`         | `#e8e8e8` | Main text                              |
| `fg1`        | `#e8e8e8` | Alias for main text                    |
| `fg2`        | `#787878` | Comments, secondary text               |
| `fgMuted`    | `#909090` | Muted text, secondary UI               |
| `fgSubtle`   | `#707070` | Punctuation, low-emphasis UI           |
| `fgHint`     | `#606060` | Hints, inlay hints, subtle helpers     |

## Accent colors

| Name         | Hex       | Intended usage                         |
|--------------|-----------|----------------------------------------|
| `accent`     | `#d4b048` | Primary accent                         |
| `accdim`     | `#8a7020` | Dim accent, search overlays            |
| `accbrt`     | `#e8c858` | Bright accent, selected states         |
| `acchigh`    | `#f0d060` | Highest accent, jump labels, highlights|

## Semantic colors

| Name         | Hex       | Intended usage                         |
|--------------|-----------|----------------------------------------|
| `red`        | `#b54a4a` | Errors, destructive actions            |
| `bred`       | `#c45a5a` | Bright error                           |
| `green`      | `#5a8f6a` | Success, additions                     |
| `bgreen`     | `#6aa07a` | Bright success                         |
| `warning`    | `#c4924a` | Warnings, conflicts                    |
| `orange`     | `#d4b048` | Accent-like orange                     |
| `teal`       | `#909090` | Muted cyan/teal role                   |
| `slate`      | `#383838` | Dark neutral surface                   |

## Terminal colors

| Name         | Hex       |
|--------------|-----------|
| `black`      | `#2e2e2e` |
| `red`        | `#b54a4a` |
| `green`      | `#5a8f6a` |
| `yellow`     | `#d4b048` |
| `blue`       | `#646464` |
| `magenta`    | `#535353` |
| `cyan`       | `#909090` |
| `white`      | `#e8e8e8` |
| `bblack`     | `#535353` |
| `bred`       | `#c45a5a` |
| `bgreen`     | `#6aa07a` |
| `byellow`    | `#e8c858` |
| `bblue`      | `#909090` |
| `bmagenta`   | `#787878` |
| `bcyan`      | `#a8a8a8` |
| `bwhite`     | `#f5f5f5` |