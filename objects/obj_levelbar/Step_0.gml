if !global.paused
{
	if (score != global.late_score)
	{
		var score_dif = score - global.late_score
		if (abs(score_dif) < sign(score_dif)*global.level) global.late_score = score
		else global.late_score += sign(score_dif)*global.level
	}

	level_points = global.late_score-prev_level_points
}