/// @description Physics
if alarm[1] == -1 //if player isn't swapping gems
{
	current_speed += GEM_MOVE_SPEED //accelerate
	if (current_speed > GEM_MAX_SPEED) current_speed = GEM_MAX_SPEED
	if (y + current_speed) >= MOVE_TO_Y //if i haven't reached my destination yet
	{
		if (fresh_spawn) //am I a freshly created gem?
		{
			fresh_spawn = false; //not anymore
			if !audio_is_playing(snd_gemclick) audio_play_sound(snd_gemclick,0,false)
			global.gems_needed_to_stay--  //I am still. If everyone else is also still, do line below
			if (global.gems_needed_to_stay == 0) with(obj_player) {alarm[0] = 1} //execute matches
		}
		current_speed = 0
		y = MOVE_TO_Y
	}
	y+=current_speed
}
else {MOVE_TO_Y = y; current_speed = 0;} //if he is swapping, ignore physics, follow the swap animation

if (selected) image_speed = 1				//start doing the spin animation if im selected
else if (image_index == 0) image_speed = 0 //if im not selected, stop when we reach the first frame of animation