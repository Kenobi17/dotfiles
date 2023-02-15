local wezterm = require("wezterm")

return {
	font = wezterm.font("Hack Nerd Font"),
	color_scheme = "tokyonight",
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
	hide_tab_bar_if_only_one_tab = true,
	tab_max_width = 50,
	show_new_tab_button_in_tab_bar = false,
	inactive_pane_hsb = {
		saturation = 0.4,
		brightness = 0.4,
	},
	window_background_opacity = 0.95,
	keys = {
		{
			key = "q",
			mods = "SUPER",
			action = wezterm.action.CloseCurrentPane({ confirm = false }),
		},
		{
			key = "q",
			mods = "SHIFT|SUPER",
			action = wezterm.action.CloseCurrentTab({ confirm = false }),
		},
	},
}
