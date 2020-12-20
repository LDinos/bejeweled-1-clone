/// @description
if (mouse_check_button_pressed(mb_left) && !global.paused)
{
	if (mouse_on_range(x-(width/2),y-(height/2),x+(width/2),y+(height/2)) && (global.gems_are_stable || global.gameover))
	{	
		event_user(0)
	}
}
else if ((!window_has_focus() || os_is_paused()) && !global.paused && global.mode == "timetrial" && global.gems_are_stable) event_user(0)