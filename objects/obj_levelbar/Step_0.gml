if !global.paused
{
	level_points_late = points_catch_up(level_points, level_points_late)
	global.late_score = points_catch_up(score, global.late_score)
}