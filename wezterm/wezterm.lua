local wezterm = require("wezterm")

local config = {
	font_size = 12,
	font = wezterm.font_with_fallback({
		"FiraCode Nerd Font",
		"Source Han Sans CN",
		"Noto Sans Symbols",
	}),
	color_scheme = "Catppuccin Mocha",

	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_decorations = "RESIZE",
	show_new_tab_button_in_tab_bar = false,

	default_cursor_style = "BlinkingBar",
	cursor_blink_rate = 500,

	window_padding = {
		left = 10,
		right = 10,
		top = 10,
		bottom = 5,
	},
}

return config
