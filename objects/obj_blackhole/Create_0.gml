/// @description The black hole warper
image_alpha = 0
image_xscale = 0.5
image_yscale = image_xscale
first_part = true; //First part of the animation is fading in and scaling up
alarm[0] = 3*60
instance_create_depth(x,y,DEPTH_BLACKHOLE_COVER,obj_blackholecover)