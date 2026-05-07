{ config, lib, ... }:

let
  colors = import ../palette/koppi.nix;
in
{
  options.koppi = {
    enable = lib.mkEnableOption "Koppi theme integration";

    colors = lib.mkOption {
      readOnly = true;
      default = colors;
      description = "Koppi color palette.";
    };
  };

  config = lib.mkIf config.koppi.enable {
    xdg.configFile."koppi/colors.nix".source = ../palette/koppi.nix;
    xdg.configFile."koppi/colors.json".source = ../palette/koppi.json;
  };
}
