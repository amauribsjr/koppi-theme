{
  description = "Koppi theme — a warm, low-contrast, Gruvbox-inspired dark theme.";

  outputs = { self }: {
    lib = {
      colors = import ./palette/koppi.nix;
    };
  };
}
