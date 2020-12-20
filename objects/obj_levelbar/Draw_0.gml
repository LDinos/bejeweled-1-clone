/// @description
var completion = ((level_points)/(global.points_needed-prev_level_points+lost_points))
if (completion > 1) completion = 1
if (level_complete_deplete_anim < 1) completion = level_complete_deplete_anim

// Base color of level bar
var c = c_lime;

switch (global.mode) {
	default:  //if it's normal
		c = c_lime;
		break;
		
	case "timetrial": //if it is timetrial
	
		// Playing the warning sound
		if ( completion < 0.15 
			&& alarm[1] == -1 
			&& !global.gameover 
			&& !global.paused
			) {
			alarm[1] = round(completion*600)
			alarm[1] = clamp(alarm[1], 35, 120)
		}
		
		image_speed = completion < 0.1 ? 0.5 : 0;
	
		/** Watched your stream, red-to-green gradient can be done much easier
				-- @Onekone#8106 */
		var c = (image_index == 1) ? c_white : make_color_hsv(clamp(completion,0,1)*85,255,255);
												// green on color wheel is 120deg, red is 0.
												// 120/360*255 = ~85.3
	break;
}

draw_sprite_part_ext(sprite_index,1,0,0,sprite_width*completion,sprite_height,x,y,1,1,c,1)