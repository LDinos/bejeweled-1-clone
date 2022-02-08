/// @description I am the level bar
level_complete_deplete_anim = 1
image_speed = 0
level_points = 0 //Current bar points. Always ranges from 0 to (global.points_needed - prev_level_points)
level_points_late = 0 //late level points for animation

depth = DEPTH_BACKGROUND_UI-1

color_green = animcurve_get_channel(anim_bar_color,"G")
color_red = animcurve_get_channel(anim_bar_color,"R")

function points_catch_up(real_score, late_score) {
	if (real_score != late_score)
	{
		var score_dif = real_score - late_score
		if (abs(score_dif) < sign(score_dif)*global.level) late_score = real_score
		else late_score += sign(score_dif)*global.level
	}
	return late_score;
}