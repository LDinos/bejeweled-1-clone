function add_score(score_x,score_y,score_var){
	var s = instance_create_depth(score_x,score_y,DEPTH_BACKGROUND_UI,obj_score)
	score_var = score_var + 10*(global.mode=="timetrial")
	s.str = string(score_var)
	score += score_var
	global.combo_points += score_var
	with(obj_hint) 
	{ 	
		combo_text = "+"+string(global.combo_points)
		hint_alpha = 0; alarm[2] = 7*60; alarm[0] = 1; alarm[1] = -1
	}
	if (global.combo_points >= global.points_addup*15) if !global.has_said_excellent 
	{
		create_fancy_text("EXCELLENT!"); 
		audio_play_sound(snd_excellent,0,false); 
		global.has_said_excellent = true
	}
}