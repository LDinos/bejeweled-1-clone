/// @description
audio_play_sound(snd_button_click,0,false)
if global.gems_are_stable && cooldown == 0 && !global.paused
{
	cooldown = 180
	var g = find_possible_moves(false)
	if (g != noone)
	{
		score -= 5*global.points_addup
		if (score < 0) score = 0
		instance_create_depth(g.x,g.y,g.depth-1,obj_hint_sparkles)
	}
}