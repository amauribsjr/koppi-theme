# Screenshot standards

This document defines the conventions for screenshots included in this
repository. Consistent screenshots make port comparisons honest and the
README visually coherent.

## Resolution and format

- **Format:** PNG, lossless.
- **Scale:** 1x (no HiDPI upscaling). If your display is HiDPI, export at
  logical resolution, not physical.
- **Width:** Default HD/HD+ and FullHD resolutions preferred. Narrower is acceptable for terminal-only shots.
  Never exceed 1920px.

## Content

Each port screenshot must show the same reference file to allow honest
comparison across ports. Use the snippet below, saved as `koppi_preview.rs`:

```rust
use std::collections::HashMap;

/// The Koppi color theme — warm, low-contrast, dark.
#[derive(Debug, Clone)]
pub struct Theme {
    name:   String,
    colors: HashMap<String, String>,
}

impl Theme {
    pub fn new(name: &str) -> Self {
        Self { name: name.to_string(), colors: HashMap::new() }
    }

    pub fn set(&mut self, token: &str, hex: &str) -> &mut Self {
        self.colors.insert(token.to_string(), hex.to_string());
        self
    }

    pub fn get(&self, token: &str) -> Option<&str> {
        self.colors.get(token).map(|s| s.as_str())
    }
}

fn main() {
    let mut koppi = Theme::new("Koppi");
    koppi
        .set("bg",     "#2e2e2e")
        .set("accent", "#d4b048")
        .set("green",  "#5a8f6a");

    if let Some(accent) = koppi.get("accent") {
        println!("accent → {accent}");
    }
}
```

## Composition rules

- No window decorations unless the port is specifically for a window manager
  component (Waybar, gtklock, ReGreet).
- No system UI visible outside the application being captured.
- Font: whatever your system monospace is — do not change it for the screenshot.
- No artificial padding or drop shadows added in post.
- No text overlays, labels or annotations.

## Naming

Place screenshots under `screenshots/` using the port name as filename:

```
screenshots/helix.png
screenshots/zed.png
screenshots/neovim.png
screenshots/kitty.png
screenshots/desktop.png   ← full desktop composition shot
```

The `desktop.png` screenshot is the exception to the reference file rule — it
should show your actual working environment with Koppi applied across all
visible components simultaneously.

## Updating screenshots

When the palette changes in a breaking way (major version), all screenshots
must be retaken. Patch releases do not require screenshot updates unless the
visual change is significant.
