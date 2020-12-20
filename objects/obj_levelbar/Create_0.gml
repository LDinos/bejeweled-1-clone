/// @description I am the level bar

level_complete_deplete_anim = 1
image_speed = 0
level_points = 0 //Current bar points. Always ranges from 0 to (global.points_needed - prev_level_points)
prev_level_points = 0 //The points we had at the end of the previous level
depth = DEPTH_BACKGROUND_UI-1
lost_points = 0 //Points depleted in timetrial. At beginning of level, value's equal to half of the bar