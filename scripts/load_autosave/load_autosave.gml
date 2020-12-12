// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_autosave(){
	for (var i = 0; i < 8; i++) for (var j = 0; j < 8; j++) {global.board[i][j] = EMPTY}
	var settings = ds_map_secure_load("autosave_"+global.mode)
	for(var i = 7; i >= 0; i--) for(var j = 0; j < 8; j++)
	{
		var skin = settings[? string(i)+string(j)]
		var gem = instance_create_depth(x + GRID*j + GRID/2, y + GRID*i + GRID/2, DEPTH_GEMS,obj_gem)
		gem._i = i
		gem._j = j
		with(gem) set_skin(skin)
		global.board[i][j] = gem.skin
		
	}
	global.level = settings[? "level"]
	global.points_addup = settings[? "points_addup"]
	global.points_needed = settings[? "points_needed"]
	score = settings[? "points"]
	obj_levelbar.prev_level_points = settings[? "prev_level_points"]
	global.late_score = score
	color_index = settings[? "color_index"]
	image_index = settings[? "image_index"]
}