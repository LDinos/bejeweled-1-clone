/// @description Shaking gem when game is over
image_xscale =  GRID/sprite_width //Fit exactly in one square
image_yscale = image_xscale
image_speed = 0
alarm[0] = 3 //Shake
alarm[1] = 90 //Then fall down
alarm[2] = 270 //Then die
xoffset = 0
yoffset = 0
physics = false;
xspeed = irandom_range(-8,8)
yspeed = irandom_range(-15,25)