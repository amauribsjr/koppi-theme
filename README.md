# Koppi Theme

**Koppi** is a warm, low-contrast, dark theme focused on readability and cohesive Wayland desktop integration.

It started as the visual layer of my personal NixOS setup and is being split into a standalone, reproducible theme project.

Koppi was shaped by two main influences: my friend [Bayer](https://github.com/gustabayer) and Rust.

## Summary

[Preview](#preview) · [Palette](#palette) · [Ports](#ports) · [Installation](#installation) · [Nix usage](#nix-usage) · [Portable usage](#portable-usage) · [Philosophy](#philosophy) · [Roadmap](#roadmap)
---
**Editors:** [Helix](#helix) · [Zed](#zed) · [Neovim](#neovim) · [VS Code](#vs-code)  
**Terminals:** [Kitty](#kitty) · [Alacritty](#alacritty) · [Foot](#foot) · [WezTerm](#wezterm) · [Ghostty](#ghostty)  
**Desktop:** [Waybar](#waybar) · [Wofi](#wofi) · [gtklock](#gtklock) · [ReGreet](#regreet)  
**CLI/TUI:** [bat](#bat) · [btop](#btop) · [delta](#delta) · [fzf](#fzf) · [lazygit](#lazygit)

## Preview

Screenshots are in `screenshots/`.

![Koppi Helix preview](screenshots/helix.png)

- Live preview: [amauribsjr.github.io/koppi-theme](https://amauribsjr.github.io/koppi-theme)

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
* `palette/koppi.css`
* `palette/koppi.scss`

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
| bat       | Available | `ports/bat/koppi.tmTheme`                    |
| btop      | Available | `ports/btop/koppi.theme`                     |
| delta     | Available | `ports/delta/koppi.gitconfig`                |
| fzf       | Available | `ports/fzf/koppi.sh`                         |
| lazygit   | Available | `ports/lazygit/koppi.yml`                    |

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

### bat

```bash
mkdir -p "$(bat --config-dir)/themes"
cp ports/bat/koppi.tmTheme "$(bat --config-dir)/themes/Koppi.tmTheme"
bat cache --build
```

Then set the theme in `~/.config/bat/config`:

```
--theme=Koppi
```

### btop

```bash
mkdir -p ~/.config/btop/themes
cp ports/btop/koppi.theme ~/.config/btop/themes/koppi.theme
```

Then select `koppi` under color theme in btop settings (`T` to open).

### delta

Include the theme from your `~/.gitconfig`:

```ini
[include]
    path = /path/to/ports/delta/koppi.gitconfig

[delta]
    features = koppi
```

If you use the Koppi bat theme, set `syntax-theme = Koppi` inside the
`[delta "koppi"]` block for consistent syntax highlighting across both tools.

### fzf

Source the file from your shell configuration:

```bash
# bash / zsh
source /path/to/ports/fzf/koppi.sh
```

### lazygit

**Option 1** — load alongside your main config:

```bash
export LG_CONFIG_FILE="$HOME/.config/lazygit/config.yml,$HOME/.config/lazygit/koppi.yml"
cp ports/lazygit/koppi.yml ~/.config/lazygit/koppi.yml
```

**Option 2** — copy the `gui.theme` block into your existing `~/.config/lazygit/config.yml`.

## Nix usage

This repository exposes the Koppi palette as a flake output:

```nix
inputs.koppi-theme.url = "github:amauribsjr/koppi-theme";
```

Then:

```nix
colors = inputs.koppi-theme.lib.colors;
```

## Portable usage

For projects that do not use Nix, the palette is also available as CSS custom properties
and SCSS variables under `palette/`.

**CSS:**

```css
@import "palette/koppi.css";

.my-element {
  background-color: var(--koppi-bg);
  color: var(--koppi-fg);
  border-color: var(--koppi-accent);
}
```

**SCSS:**

```scss
@use "palette/koppi" as koppi;

.my-element {
  background-color: koppi.$koppi-bg;
  color: koppi.$koppi-fg;
  border-color: koppi.$koppi-accent;
}
```

Token names follow the same convention as the JSON palette, with camelCase converted
to kebab-case: `bgLine` → `--koppi-bg-line`, `fgMuted` → `--koppi-fg-muted`.

**JSON:**

```json
{
  "bg": "#2e2e2e",
  "accent": "#d4b048"
}
```

The full palette is available at `palette/koppi.json` and can be consumed directly
by any tooling that reads JSON — build scripts, design tokens pipelines, or theme
generators.

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

## License

[MIT](https://opensource.org/license/mit)
