/// @description I am the board grid
colors[0] = make_color_rgb(84,69,49) // $4e3f2b //Brown
colors[1] = make_color_rgb(150,58,58) //Red
colors[2] = make_color_rgb(31,103,48) //Green
colors[3] = make_color_rgb(40,52,103) //Blue
color_index = 3
image_speed = 0
score = 0
global.paused = false
global.late_score = 0; //takes a while for this variable to reach the real score we have
if (global.mode == "timetrial") with(obj_levelbar) lost_points = 250
calculate_level_points(1)
global.gems_needed_to_stay = 0 //when new gems are created, this goes up. 
							//When they become still, they remove 1 from the variable until the final variable is 0.
							 // If that var reaches 0, then global.gems_are_stable = true
if !file_exists("autosave_"+global.mode) {alarm[1] = 60; gem_initial_spawn()}
else
{
	global.paused = true;
	instance_create_depth(0,0,DEPTH_BACKGROUND_UI-1,obj_continue_dialog)
	//load_autosave()
}
board_anim_alpha = 0 //when changing levels, we show the next board coming
