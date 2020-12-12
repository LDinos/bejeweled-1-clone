/// @description Gems that warp around the center
image_speed = 0 //don't animate
image_xscale = GRID/sprite_width //Fit exactly in one square
image_yscale = image_xscale
centerx = obj_blackhole.x //center of the board is here
centery = obj_blackhole.y
pull_anim_alpha = 0
dist = point_distance(x,y,centerx,centery) //the distance between me and the center
angle = point_direction(centerx,centery,x,y) //the angle between me and the center
start_dist = dist
start_when = 0 //Don't immediatly start rotating, the further gems take a bit to start
angle_speed = 0 //How fast am I rotating around the center
obj_player.selected_gem = noone //Definitely unselect gems if any was selected
anim_channel = animcurve_get_channel(anim_level_complete,"gem_scale") //scale change