/// @description
if mouse_check_button_pressed(mb_left)
{
	if mouse_on_range(x+48,y+272,x+48+button_width,y+272+button_height) //YES
	{
		with(obj_board) load_autosave()
		global.paused = false
		instance_destroy()
	} 
	else if mouse_on_range(x+358,y+272,x+358+button_width,y+272+button_height) //NO
	{
		file_delete("autosave_"+global.mode)
		room_restart()
	}
}