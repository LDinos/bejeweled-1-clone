/// @description
if mouse_check_button_pressed(mb_left) //click once on button
{
	if mouse_on_range(x + 36,y+286,x+sprite_width-36,y+332)
	{
		play_sound(snd_button_click)
		instance_activate_all()
		global.paused = false
		instance_destroy(obj_gem_paused)
		obj_button_options.am_bright = false
		ini_open("settings.ini")
			ini_write_real("Settings","VolMus",global.VolMus)
			ini_write_real("Settings","VolFX",global.VolFX)
		ini_close()
		instance_destroy()
	}
}
else if mouse_check_button(mb_left)//drag a slider
{
	if (dragging_slider == 0)
	{
		if (mouse_y >= slider_y[0]-16 && mouse_y <= slider_y[0]+16) dragging_slider = 1
		else if (mouse_y >= slider_y[1]-16 && mouse_y <= slider_y[1]+16) dragging_slider = 2
	}
	else
	{
		slider_alpha[dragging_slider-1] = (mouse_x - slider_x_start) / (slider_x_end-slider_x_start)
		slider_alpha[dragging_slider-1] = clamp(slider_alpha[dragging_slider-1],0,1)
		if dragging_slider == 1
		{
			global.VolMus = slider_alpha[dragging_slider-1]
			audio_group_set_gain(audiogroup_music,global.VolMus,0)
		}
		else
		{
			global.VolFX = slider_alpha[dragging_slider-1]
			audio_group_set_gain(audiogroup_default,global.VolFX,0)
		}
	}
}
else dragging_slider = 0