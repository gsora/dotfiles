local wezterm = require 'wezterm';

return {
	font = wezterm.font_with_fallback({
		"Iosevka SS11",
		"BlexMono Nerd Font",
	}),

	font_size = 16,
	color_scheme = "ayu",
	freetype_load_target = "Light",
	use_fancy_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	window_frame = {
		font = wezterm.font(
			{
				family="Iosevka SS11", 
				weight="Bold"
			}
		),
		font_size = 14.0,
	},
}
