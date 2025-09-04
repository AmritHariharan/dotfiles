-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
config.default_prog = { 'C:\\Program Files\\PowerShell\\7\\pwsh.exe' }
config.color_scheme = 'Catppuccin Latte'

-- Fancy tab bar doesn't auto match colour schemes.
config.use_fancy_tab_bar = false

-- Needed for remote desktop use.
config.prefer_egl = true

-- Font configuration.
config.font = wezterm.font 'Berkeley Mono'
config.font_rules = {
  {
    intensity = 'Normal',
    italic = true,
    font = wezterm.font 'Berkeley Mono Oblique',
  },
  {
    intensity = 'Bold',
    italic = false,
    font = wezterm.font 'Berkeley Mono Bold',
  },
  {
    intensity = 'Bold',
    italic = true,
    font = wezterm.font 'Berkeley Mono Bold Oblique',
  },
}

-- Interactively rename the current tab with HYPER-E
local act = wezterm.action
config.keys = {
  {
    key = 'E',
    mods = 'CTRL|SHIFT|ALT|SUPER',
    action = act.PromptInputLine {
      description = 'Enter new name for tab',
      action = wezterm.action_callback(function(window, pane, line)
        -- line will be `nil` if they hit escape without entering anything
        -- An empty string if they just hit enter
        -- Or the actual line of text they wrote
        if line then
          window:active_tab():set_title(line)
        end
      end),
    },
  },
}

-- Finally, return the configuration to wezterm:
return config
