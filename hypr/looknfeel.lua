-- Personal look and feel overrides (ported from looknfeel.conf).
-- Animations use Omarchy defaults (looknfeel.conf had them disabled).

hl.config({
  general = {
    gaps_in = 0,
    gaps_out = 0,
  },

  decoration = {
    blur = {
      enabled = true,
      size = 4,
      passes = 3,
      vibrancy = 0.5,
    },
  },
})
