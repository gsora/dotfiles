local wezterm = require("wezterm")

return {
	font = wezterm.font_with_fallback({
		"Spline Sans Mono",
	}),
	cell_width = 1,
	font_size = 14,
	--color_scheme = "ayu",
	--freetype_load_target = "Light",
	use_fancy_tab_bar = true,
	hide_tab_bar_if_only_one_tab = false,
	window_frame = {
		font = wezterm.font(
			{family="Spline Sans Mono", weight="Regular", italic=false}
		),
		font_size = 12,
	},
	front_end = "WebGpu",
	leader = { key = "a", mods = "CMD", timeout_milliseconds = 1000 },
	keys = {
		{
			key = "|",
			mods = "LEADER|SHIFT",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "-",
			mods = "LEADER",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},

	},
	color_scheme = "GitHub Dark",
}
