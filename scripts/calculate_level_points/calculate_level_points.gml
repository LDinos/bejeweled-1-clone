function calculate_level_points(level){
	global.level = level
	global.points_addup = 10 + (global.level-1)*5 //How many points does a basic match give?
	global.points_needed = global.points_addup*(50 + 15*(global.level-1)) //How many points until lvl complete
	obj_levelbar.level_points = 0
	if (global.mode == "timetrial") 
	{
		obj_levelbar.level_points = global.points_needed//
		global.points_needed *= 2
	}
	obj_levelbar.level_points_late = obj_levelbar.level_points
}