/// @description I am the level complete manager
obj_levelbar.image_speed = 0.4
level_bar_anim = 0
audio_play_sound(snd_blackhole,0,false)
instance_create_depth(obj_board.x + (8*GRID)/2, obj_board.y + (8*GRID)/2,DEPTH_BLACKHOLE,obj_blackhole)
instance_create_depth(obj_board.x + (8*GRID)/2, obj_board.y + (8*GRID)/2,DEPTH_BLACKHOLE_COVER,obj_blackholecover)
alarm[0] = 60 //Play sound effect
alarm[1] = 150 //Play sound LEVEL UP
alarm[2] = 150 //Deplete level bar and change level
with(obj_gem)
{
	var g = instance_create_depth(x,y,depth,obj_gem_lvlcomplete)
	g.sprite_index = sprite_index
	instance_destroy(id,false)
}