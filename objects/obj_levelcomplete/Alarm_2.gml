/// @description Deplete levelbar and update level
level_bar_anim += 0.01
with(obj_levelbar)
{
	level_complete_deplete_anim = lerp(1,0 + 0.5*(global.mode=="timetrial"),other.level_bar_anim)
	image_speed = 0
	image_index = 0
}
if (level_bar_anim != 1) alarm[2] = 1
else
{
	//obj_levelbar.prev_level_points = score
	obj_levelbar.level_complete_deplete_anim = 1 //reset depletion alpha
	create_fancy_text("LEVEL " + string(global.level+1))
	calculate_level_points(global.level+1)	
}