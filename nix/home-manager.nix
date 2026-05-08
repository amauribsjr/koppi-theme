{ config, lib, ... }:

let
  c   = import ../palette/koppi.nix;
  hex = v: "#${v}";
  cfg = config.koppi;
in {

  # ── Options ────────────────────────────────────────────────────────
  options.koppi = {

    enable = lib.mkEnableOption "Koppi theme";

    colors = lib.mkOption {
      readOnly    = true;
      default     = c;
      description = "The Koppi color palette. Token values do not include the leading #.";
    };

    alacritty.enable = lib.mkEnableOption "Koppi colors for Alacritty";
    kitty.enable     = lib.mkEnableOption "Koppi colors for Kitty";
    bat.enable       = lib.mkEnableOption "Koppi syntax theme for bat";
    fzf.enable       = lib.mkEnableOption "Koppi colors for fzf";
    waybar.enable    = lib.mkEnableOption "Koppi stylesheet for Waybar";

  };

  # ── Configuration ──────────────────────────────────────────────────
  config = lib.mkIf cfg.enable (lib.mkMerge [

    # Palette files — always exposed when koppi.enable = true
    {
      xdg.configFile."koppi/colors.nix".source  = ../palette/koppi.nix;
      xdg.configFile."koppi/colors.json".source = ../palette/koppi.json;
    }

    # ── Alacritty ────────────────────────────────────────────────────
    (lib.mkIf cfg.alacritty.enable {
      programs.alacritty.settings.colors = {
        primary = {
          background = hex c.bg;
          foreground = hex c.fg;
        };
        cursor = {
          text   = hex c.bg;
          cursor = hex c.accent;
        };
        selection = {
          text       = hex c.fg;
          background = hex c.bgSelect;
        };
        normal = {
          black   = hex c.black;
          red     = hex c.red;
          green   = hex c.green;
          yellow  = hex c.yellow;
          blue    = hex c.blue;
          magenta = hex c.magenta;
          cyan    = hex c.cyan;
          white   = hex c.white;
        };
        bright = {
          black   = hex c.bblack;
          red     = hex c.bred;
          green   = hex c.bgreen;
          yellow  = hex c.byellow;
          blue    = hex c.bblue;
          magenta = hex c.bmagenta;
          cyan    = hex c.bcyan;
          white   = hex c.bwhite;
        };
      };
    })

    # ── Kitty ────────────────────────────────────────────────────────
    (lib.mkIf cfg.kitty.enable {
      programs.kitty.settings = {
        background           = hex c.bg;
        foreground           = hex c.fg;
        selection_background = hex c.bgSelect;
        selection_foreground = hex c.fg;
        cursor               = hex c.accent;
        cursor_text_color    = hex c.bg;
        url_color            = hex c.accent;

        color0  = hex c.black;
        color1  = hex c.red;
        color2  = hex c.green;
        color3  = hex c.yellow;
        color4  = hex c.blue;
        color5  = hex c.magenta;
        color6  = hex c.cyan;
        color7  = hex c.white;
        color8  = hex c.bblack;
        color9  = hex c.bred;
        color10 = hex c.bgreen;
        color11 = hex c.byellow;
        color12 = hex c.bblue;
        color13 = hex c.bmagenta;
        color14 = hex c.bcyan;
        color15 = hex c.bwhite;
      };
    })

    # ── bat ──────────────────────────────────────────────────────────
    (lib.mkIf cfg.bat.enable {
      programs.bat = {
        themes = {
          Koppi = {
            src  = ../ports/bat;
            file = "koppi.tmTheme";
          };
        };
        config.theme = "Koppi";
      };
    })

    # ── fzf ──────────────────────────────────────────────────────────
    (lib.mkIf cfg.fzf.enable {
      programs.fzf.defaultOptions = [
        "--color=fg:${hex c.fg},bg:${hex c.bg},hl:${hex c.accent}"
        "--color=fg+:${hex c.fg},bg+:${hex c.bg1},hl+:${hex c.accbrt}"
        "--color=info:${hex c.fgMuted},border:${hex c.bg3},separator:${hex c.bg3}"
        "--color=prompt:${hex c.accent},pointer:${hex c.accbrt},marker:${hex c.green}"
        "--color=spinner:${hex c.accent},header:${hex c.fgMuted},label:${hex c.accent}"
        "--color=preview-fg:${hex c.fg},preview-bg:${hex c.bg},preview-border:${hex c.bg3}"
      ];
    })

    # ── Waybar ───────────────────────────────────────────────────────
    (lib.mkIf cfg.waybar.enable {
      programs.waybar.style = builtins.readFile ../ports/waybar/koppi.css;
    })

  ]);
}