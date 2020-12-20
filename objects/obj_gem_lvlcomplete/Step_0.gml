/// @description
if (start_when > (start_dist/6)) //Start spinning after a while (depeneds how far away i am)
{
	if (pull_anim_alpha < 1) pull_anim_alpha+= 0.008
	if (angle_speed < 15) angle_speed += 0.15	//Keep rotating faster and faster
	angle += angle_speed
	dist = lerp(start_dist,0,pull_anim_alpha)	//Keep going closer and closer to the center
	x = centerx + lengthdir_x(dist,angle)		//Make a line from the center, use the angle and find out where-
	y = centery + lengthdir_y(dist,angle)		// -I am.
	image_xscale = lerp(GRID/sprite_width_start,0,animcurve_channel_evaluate(anim_channel,pull_anim_alpha)) //Scale me down a lot near the end
	image_yscale = image_xscale

	if (dist == 0) instance_destroy() //if we are in the center, we can die.
}
else start_when++ //'start when' is the delay variable