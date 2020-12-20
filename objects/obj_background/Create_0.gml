/// @description I am the background UI
color = c_lightblue
depth = DEPTH_BACKGROUND_UI
alarm[0] = 1;

bx = 0;
by = 0;
_bx = -1;
_by = -1;

if (os_browser != browser_not_a_browser) {
	window_set_fullscreen(true);
}
