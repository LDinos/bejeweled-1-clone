/// @description Pause
if (global.mode == "timetrial") && (!global.gameover) with(obj_board) autosave(global.mode) //save more often on timetrial
global.paused = true
play_sound(snd_button_click)
am_bright = true
instance_create_depth(obj_board.x,obj_board.y,DEPTH_BACKGROUND_UI-1,obj_options_dialog)
with(obj_gem) 
{
	if (global.mode == "normal")
	{
		var g = instance_create_depth(x,y,depth,obj_gem_paused); 
		g.sprite_index = sprite_index; 
	}
	instance_deactivate_object(id)
}