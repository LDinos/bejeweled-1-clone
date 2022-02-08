/// @description
var completion = (level_points_late/global.points_needed)
if (completion > 1) completion = 1
if (level_complete_deplete_anim < 1) completion = level_complete_deplete_anim
if (global.mode != "timetrial") || (completion == 1) //if it's normal
{
	draw_sprite_part(sprite_index,image_index,0,0,sprite_width*completion,sprite_height,x,y)
}
else //if it is timetrial
{
	if (completion < 0.15) && (alarm[1] == -1) && (!global.gameover) && (!global.paused)
	{
		alarm[1] = round(completion*600)
		alarm[1] = clamp(alarm[1], 35, 120)
	}
	if (completion < 0.1) image_speed = 0.5
	else image_speed = 0
	var cr = animcurve_channel_evaluate(color_red,1-completion)
	var cg = animcurve_channel_evaluate(color_green,1-completion)
	var c = make_color_rgb(cr,cg,0)
	draw_sprite_part_ext(sprite_index,1,0,0,sprite_width*completion,sprite_height,x,y,1,1,c,1) //green/yellow/red bar
	if (image_index == 1) draw_sprite_part(sprite_index,image_index,0,0,sprite_width*completion,sprite_height,x,y) //white bar
}
