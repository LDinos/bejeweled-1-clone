function calculate_level_points(level){
	global.level = level
	global.points_addup = 10 + (global.level-1)*5 //How many points does a basic match give?
	global.points_needed = score + global.points_addup*(50 + 15*(global.level-1)) //How many points until lvl complete
	if (global.mode == "timetrial") 
	{
		obj_levelbar.lost_points = round((global.points_needed-obj_levelbar.prev_level_points))//
	}
}