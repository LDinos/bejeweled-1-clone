// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function autosave(mode){
	var settings = ds_map_create()
	ds_map_add(settings,"level",global.level)
	ds_map_add(settings,"points",score)
	ds_map_add(settings,"level_points",obj_levelbar.level_points)
	ds_map_add(settings,"points_addup",global.points_addup)
	ds_map_add(settings,"color_index",obj_board.color_index)
	ds_map_add(settings,"image_index",obj_board.image_index)
	for(var i = 0; i < 8; i++) for(var j = 0; j < 8; j++)
	{
		ds_map_add(settings,string(i)+string(j),global.board[i][j])
	}
	ds_map_secure_save(settings,"autosave_"+mode)
	ds_map_destroy(settings)
}
