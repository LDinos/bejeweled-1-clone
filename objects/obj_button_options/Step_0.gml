/// @description
if mouse_check_button_pressed(mb_left) && !global.paused
{
	if mouse_on_range(x-(width/2),y-(height/2),x+(width/2),y+(height/2)) && (global.gems_are_stable || global.gameover)
	{	
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

	}
}