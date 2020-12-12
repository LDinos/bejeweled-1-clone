/// @description
var completion = (level_points/(global.points_needed-prev_level_points))
if (completion > 1) completion = 1
if (level_complete_deplete_anim < 1) completion = level_complete_deplete_anim
draw_sprite_part(sprite_index,image_index,0,0,sprite_width*completion,sprite_height,x,y)