local wezterm = require 'wezterm';

return {
	font = wezterm.font_with_fallback({
		"Iosevka SS11",
		"BlexMono Nerd Font"
	}),

	font_size = 16,
	color_scheme = "ayu",
	freetype_load_target = "Light",
}
