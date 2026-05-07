# Koppi Theme

**Koppi** is a warm, low-contrast, dark theme focused on readability and cohesive Wayland desktop integration.

It started as the visual layer of my personal NixOS setup and is being split into a standalone, reproducible theme project.

Koppi was shaped by two main influences: my friend [Bayer](https://github.com/gustabayer) and Rust.

## Preview

Screenshots are in `screenshots/`.

![Koppi Helix preview](screenshots/helix.png)

## Palette

| Name       | Hex       |
| ---------- | --------- |
| `bg`       | `#2e2e2e` |
| `bg1`      | `#383838` |
| `bg2`      | `#434343` |
| `bg3`      | `#535353` |
| `bg4`      | `#646464` |
| `bgLine`   | `#353535` |
| `bgIndent` | `#3a3a3a` |
| `bgDim`    | `#404040` |
| `bgSelect` | `#4e4e4e` |
| `fg`       | `#e8e8e8` |
| `fgMuted`  | `#909090` |
| `fgSubtle` | `#707070` |
| `fgHint`   | `#606060` |
| `accent`   | `#d4b048` |
| `accdim`   | `#8a7020` |
| `accbrt`   | `#e8c858` |
| `acchigh`  | `#f0d060` |
| `red`      | `#b54a4a` |
| `green`    | `#5a8f6a` |
| `warning`  | `#c4924a` |

The canonical palette is available in:

* `palette/koppi.json`
* `palette/koppi.nix`

## Ports

| App       | Status    | File                                         |
| --------- | --------- | -------------------------------------------- |
| Helix     | Available | `ports/helix/koppi.toml`                     |
| Zed       | Available | `ports/zed/koppi.json`                       |
| Neovim    | Available | `ports/neovim/colors/koppi.lua`              |
| VS Code   | Available | `ports/vscode/themes/koppi-color-theme.json` |
| Kitty     | Available | `ports/kitty/koppi.conf`                     |
| Alacritty | Available | `ports/alacritty/koppi.toml`                 |
| Foot      | Available | `ports/foot/koppi.ini`                       |
| WezTerm   | Available | `ports/wezterm/koppi.lua`                    |
| Ghostty   | Available | `ports/ghostty/koppi`                        |
| Waybar    | Available | `ports/waybar/koppi.css`                     |
| Wofi      | Available | `ports/wofi/koppi.css`                       |
| gtklock   | Available | `ports/gtklock/koppi.css`                    |
| ReGreet   | Initial   | `ports/regreet/koppi.css`                    |

## Installation

### Helix

```bash
mkdir -p ~/.config/helix/themes
cp ports/helix/koppi.toml ~/.config/helix/themes/koppi.toml
```

Then set:

```toml
theme = "koppi"
```

### Zed

```bash
mkdir -p ~/.config/zed/themes
cp ports/zed/koppi.json ~/.config/zed/themes/koppi.json
```

Then select `Koppi` from Zed's theme selector.

### Neovim

```bash
mkdir -p ~/.config/nvim/colors
cp ports/neovim/colors/koppi.lua ~/.config/nvim/colors/koppi.lua
```

Then set:

```vim
colorscheme koppi
```

Or in Lua:

```lua
vim.cmd.colorscheme("koppi")
```

### VS Code

Copy the VS Code port as a local extension:

```bash
mkdir -p ~/.vscode/extensions/koppi-theme
cp -r ports/vscode/* ~/.vscode/extensions/koppi-theme/
```

Then reload VS Code and select `Koppi` from the theme selector.

### Kitty

```bash
mkdir -p ~/.config/kitty
cp ports/kitty/koppi.conf ~/.config/kitty/koppi.conf
```

Then include it in `kitty.conf`:

```conf
include koppi.conf
```

### Alacritty

```bash
mkdir -p ~/.config/alacritty/themes
cp ports/alacritty/koppi.toml ~/.config/alacritty/themes/koppi.toml
```

Then import it from `alacritty.toml`:

```toml
import = ["~/.config/alacritty/themes/koppi.toml"]
```

### Foot

Append the contents of `ports/foot/koppi.ini` to your Foot config, or include it according to your setup.

```bash
cat ports/foot/koppi.ini >> ~/.config/foot/foot.ini
```

### WezTerm

Copy the theme file:

```bash
mkdir -p ~/.config/wezterm/themes
cp ports/wezterm/koppi.lua ~/.config/wezterm/themes/koppi.lua
```

Then load it from your WezTerm config.

### Ghostty

```bash
mkdir -p ~/.config/ghostty/themes
cp ports/ghostty/koppi ~/.config/ghostty/themes/koppi
```

### Waybar

```bash
mkdir -p ~/.config/waybar
cp ports/waybar/koppi.css ~/.config/waybar/style.css
```

### Wofi

```bash
mkdir -p ~/.config/wofi
cp ports/wofi/koppi.css ~/.config/wofi/style.css
```

### gtklock

```bash
mkdir -p ~/.config/gtklock
cp ports/gtklock/koppi.css ~/.config/gtklock/style.css
```

## Nix usage

This repository exposes the Koppi palette as a flake output:

```nix
inputs.koppi-theme.url = "github:amauribsjr/koppi-theme";
```

Then:

```nix
colors = inputs.koppi-theme.lib.colors;
```

## Philosophy

Koppi is:

* dark;
* warm;
* muted;
* low to medium contrast;
* readable for long sessions;
* designed for editor and Wayland desktop cohesion.

Koppi is what I want to feel when I'm working in a WM environment.

## Roadmap

* [x] Add screenshots.
* [x] Stabilize palette names.
* [x] Add more terminal ports.
* [x] Add Neovim port.
* [x] Add VS Code port.
* [ ] Add Home Manager modules.
* [ ] Consider GTK/libadwaita support later.

## License

MIT.
