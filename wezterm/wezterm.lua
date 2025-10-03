local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- config.color_scheme = 'Raycast_Light'
-- config.color_scheme = 'Sakura (base16)'
config.color_scheme = 'tlh (terminal.sexy)'
-- config.color_scheme = 'zenbones'
-- config.color_scheme = 'Solarized Light (Gogh)'
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.7
-- 只在nightly生效
config.kde_window_background_blur = true

config.default_prog = { 'nu' }

return config
