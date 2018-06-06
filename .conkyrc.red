conky.config = {
-- Conky settings
	background = false,
	update_interval = 1,

	cpu_avg_samples = 2,
	net_avg_samples = 2,

	override_utf8_locale = true,

	double_buffer = true,
	no_buffers = true,

	text_buffer_size = 2048,
--imlib_cache_size 0

	temperature_unit = 'celsius',

-- Window specifications
	own_window_class = 'Conky',
	own_window = true,
	own_window_type = 'normal',
	own_window_transparent = true,
	own_window_hints = 'undecorated,sticky,skip_taskbar,skip_pager,below',

	border_inner_margin = 0,
	border_outer_margin = 0,

	minimum_width = 520, minimum_height = 600,
	maximum_width = 520,

	alignment = 'top_right',
	gap_x = -20,
	gap_y = 50,

-- Graphics settings
	draw_shades = false,
	draw_outline = false,
	draw_borders = false,
	draw_graph_borders = false,

	default_color = 'gray',
	default_shade_color = 'red',
	default_outline_color = 'green',

-- Text settings
	use_xft = true,
	override_utf8_locale = true,
	font = 'Play:normal:size=7',
	xftalpha = 0.9,
	uppercase = false,

	default_color = '#DCDCDC',
	color0 = '#D64937',
	color1 = '#DCDCDC',

-- Lua Load
	lua_load = '~/.conky/rings-v1.3.1.lua',
	lua_draw_hook_pre = 'ring_stats',

};

conky.text = [[
${font Play:normal:size=7}${voffset 16}${color1}${goto 120}${freq_g cpu0} Ghz${alignr 330}${acpitemp} °C
${font Play:normal:size=7}${voffset 3}${goto 120}${color1}CPU 1 ${alignr 330}${color1}${cpu cpu1}%
${font Play:normal:size=7}${voffset 3}${goto 120}${color1}CPU 2${alignr 330}${color1}${cpu cpu2}%
${goto 50}${voffset 32}${font Play:normal:size=7}${color1}${top name 1}${alignr 306}${top cpu 1}%
${goto 50}${font Play:normal:size=7}${color1}${top name 2}${alignr 306}${top cpu 2}%
${goto 50}${font Play:normal:size=7}${color1}${top name 3}${alignr 306}${top cpu 3}%
${font Michroma:size=10}${color0}${goto 80}${voffset 3}CPU 
${font Michroma:size=10}${color0}${goto 394}${voffset 45}MEMORY
${goto 324}${voffset 0}${font Play:normal:size=7}${color1}${top_mem name 1}${alignr 40}${top_mem mem 1}%
${goto 324}${font Play:normal:size=7}${color1}${top_mem name 2}${alignr 40}${top_mem mem 2}%
${goto 324}${font Play:normal:size=7}${color1}${top_mem name 3}${alignr 40}${top_mem mem 3}%
${font Play:normal:size=7}${voffset 15}${goto 348}${color1}SWAP${alignr 40}${color1}${swap} / ${color1}${swapmax}
${font Play:normal:size=7}${voffset 5}${goto 348}${color1}RAM ${alignr 40}${color1}${mem} / ${color1}${memmax}
${font Play:normal:size=7}${goto 80}${voffset -40}Root${color1}${alignr 310}${fs_used /} / ${fs_size /}
${font Play:normal:size=7}${goto 80}${voffset 0}Home${alignr 310}${color1}${fs_used /home} / ${fs_size /home}
${font Play:normal:size=7}${goto 80}${voffset 0}Boot${alignr 310}${color1}${fs_used /boot} / ${fs_size /boot}
${font Michroma:size=10}${color0}${goto 70}${voffset 10}HARD  DRIVE
${font Michroma:size=10}${color0}${voffset 40}${goto 324}INTERNET  INFO
${font Play:normal:size=7}${color1}${goto 298}${voffset 5}Up${goto 370}${color1}${totalup wlp1s0} / ${color1}${upspeed wlp1s0}
${font Play:normal:size=7}${goto 298}${color1}Down${goto 370}${color1}${totaldown wlp1s0} / ${color1}${downspeed wlp1s0}
${font Play:normal:size=7}${goto 300}${voffset 2}Local IP${goto 370}${addr wlp1s0}
${font Play:normal:size=7}${goto 300}${voffset 1}Public IP${goto 370}${execi 3600 wget -qO - ifconfig.co | sed -e 's/[^[:digit:]\|.]//g'}
${font Michroma:size=9}${alignc 120}${voffset -30} ${color0}${time %d %B %Y}
${font Michroma:size=18}${alignc 120}${color1}${voffset -5}${time %H}:${time %M}
${font Michroma:size=9}${color0}${goto 180}${voffset 30}Uptime${font Play:normal:size=8}${color1}${alignr 100}${uptime_short}
${font Michroma:size=9}${color0}${goto 180}${voffset 3}Kernel${font Play:normal:size=8}${color1}${alignr 100}${kernel}]];
