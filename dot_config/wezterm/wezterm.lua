local wezterm = require 'wezterm';

return {
	font = wezterm.font_with_fallback({
		"SF Mono",
		"BlexMono Nerd Font"
	}),

	font_size = 14,
	color_scheme = "ayu",
	freetype_load_target = "Light",
}
