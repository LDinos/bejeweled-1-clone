/// @description
if mouse_check_button_pressed(mb_left)
{
	if mouse_on_range(x+86,y+266,x+338,y+316) {file_delete("autosave_"+global.mode); room_restart()} //YES
	else if mouse_on_range(x+362,y+266,x+608,y+316) //NO
	{
		play_sound(snd_button_click)
		instance_activate_all()
		global.paused = false
		instance_destroy(obj_gem_paused)
		instance_destroy();
	}
}