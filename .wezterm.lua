local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.default_prog={'pwsh.exe'}
config.initial_cols = 120
config.initial_rows = 25
config.window_background_opacity = 0.8
config.font = wezterm.font('FiraCode Nerd Font' , {weight = 'DemiBold'})


config.keys = {
  {
  key = 'a',
  mods = 'CTRL|SHIFT',
  action = wezterm.action.SpawnCommandInNewTab{
    args = {'C:\\Users\\Dell\\scripts\\runadmin.bat'},
  },
  },
  {
    key = 'v',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitVertical,
  },
  {
    key = 'h',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitHorizontal,
  },
 
}
return config
