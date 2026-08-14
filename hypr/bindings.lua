-- Personal keybinding overrides (ported from bindings.conf for Omarchy Quattro).

local function send_shortcut_once(mods, key)
  return function()
    hl.dispatch(hl.dsp.send_key_state({ mods = mods, key = key, state = "down" }))

    hl.timer(function()
      hl.dispatch(hl.dsp.send_key_state({ mods = mods, key = key, state = "up" }))
    end, { timeout = 50, type = "oneshot" })
  end
end

-- Unbind Omarchy defaults before replacing them.
hl.unbind("SUPER + W") -- was: Close window
hl.unbind("SUPER + F") -- was: Full screen
hl.unbind("SUPER + T") -- was: Toggle floating/tiling
hl.unbind("SUPER + S") -- was: Toggle scratchpad
hl.unbind("SUPER + O") -- was: Pop window out
hl.unbind("SUPER + C") -- was: Universal copy
hl.unbind("SUPER + V") -- was: Universal paste
hl.unbind("SUPER + X") -- was: Universal cut
hl.unbind("SUPER + ESCAPE") -- was: System menu
hl.unbind("SUPER + CTRL + SPACE") -- was: Background switcher
hl.unbind("SUPER + ALT + SPACE") -- was: Apps menu
hl.unbind("SUPER + SHIFT + CTRL + SPACE") -- was: Theme menu
hl.unbind("SUPER + CTRL + V") -- was: Clipboard manager
hl.unbind("SUPER + SHIFT + G") -- was: Signal
hl.unbind("SUPER + BACKSPACE") -- was: Toggle window transparency
hl.unbind("SUPER + SHIFT + P") -- was: Google Photos
hl.unbind("SUPER + SHIFT + W") -- was: Omawrite

-- Application bindings
o.bind("SUPER + ALT + RETURN", "Tmux", { omarchy = "terminal-tmux" })
o.bind("SUPER + X", "Terminal", { omarchy = "terminal" })
o.bind("SUPER + C", "Code", { launch = "code" })
o.bind("SUPER + E", "File manager", "uwsm-app -- nautilus --new-window")
o.bind("SUPER + F", "Browser", { launch = "brave" })
o.bind("SUPER + B", "Browser Alt", { launch = "zen-browser" })
o.bind("SUPER + M", "Music", { omarchy = "spotify" })
o.bind("SUPER + N", "Editor", { omarchy = "editor" })
o.bind("SUPER + O", "Obsidian", { launch = "obsidian", focus = "^obsidian$" })

-- Web apps
o.bind("SUPER + SHIFT + G", "WhatsApp", { webapp = "https://web.whatsapp.com/", focus = true })

-- Tiling
o.bind("SUPER + Q", "Close active window", hl.dsp.window.close())
o.bind("SUPER + W", "Toggle floating", hl.dsp.window.float({ action = "toggle" }))

-- Menus
o.bind("SUPER + A", "Omarchy menu", "omarchy-menu")
o.bind("SUPER + BACKSPACE", "Power menu", "omarchy-menu toggle system")
o.bind("SUPER + SHIFT + T", "Pick new theme", "omarchy-menu theme")
o.bind("SUPER + S", "Share", "omarchy-menu toggle share")

-- Utilities
o.bind("SUPER + SHIFT + P", "Screenshot of region", "omarchy-capture-screenshot")
o.bind("SUPER + D", "Docker", { tui = "lazydocker" })
o.bind("SUPER + T", "Activity", { tui = "btop" })
o.bind("CTRL + SHIFT + ESCAPE", nil, "missioncenter")
o.bind("SUPER + SHIFT + W", "Next background in theme", "omarchy-theme-bg-next")
o.bind("SUPER + SHIFT + R", "Screen record display with audio", "omarchy-capture-screenrecording output audio")
o.bind("SUPER + Delete", "Suspend", "systemctl suspend")

-- Clipboard
o.bind("SUPER + SHIFT + C", "Copy", send_shortcut_once("CTRL", "Insert"))
o.bind("SUPER + SHIFT + V", "Paste", send_shortcut_once("SHIFT", "Insert"))
o.bind("SUPER + SHIFT + X", "Cut", send_shortcut_once("CTRL", "X"))
o.bind("SUPER + V", "Clipboard", "omarchy-launch-walker -m clipboard")
