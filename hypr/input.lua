-- Personal input overrides (ported from input.conf).

hl.config({
  input = {
    kb_options = "compose:caps",
    repeat_rate = 40,
    repeat_delay = 600,
    numlock_by_default = true,
    sensitivity = -0.5,

    touchpad = {
      scroll_factor = 0.4,
    },
  },
})

o.window("(Alacritty|kitty)", { scroll_touchpad = 1.5 })
o.window("com.mitchellh.ghostty", { scroll_touchpad = 1.5 })
