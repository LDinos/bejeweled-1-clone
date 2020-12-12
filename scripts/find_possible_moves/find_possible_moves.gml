// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function find_possible_moves(stop_at_one){
	if (!stop_at_one){var list = ds_list_create()} // [1]
	
	for(var i = 0; i < 8; i++) for(var j = 1; j < 7; j++)
	{
		//1 // [2]
		if (j <= 5) //1a
		{
			if (global.board[i][j] == global.board[i][j-1] && global.board[i][j] == global.board[i][j+2]) {if (stop_at_one) {return true} else ds_list_add(list,global.board_gem_id[i][j+2])}
		else if (global.board[j][i] == global.board[j-1][i] && global.board[j][i] == global.board[j+2][i]) {if (stop_at_one) {return true} else ds_list_add(list,global.board_gem_id[j+2][i])}
		}
		
		if (j >= 2) //1b
		{
			if (global.board[i][j] == global.board[i][j+1] && global.board[i][j] == global.board[i][j-2]) {if (stop_at_one) {return true} else ds_list_add(list,global.board_gem_id[i][j-2])}
		else if (global.board[j][i] == global.board[j+1][i] && global.board[j][i] == global.board[j-2][i]) {if (stop_at_one) {return true} else ds_list_add(list,global.board_gem_id[j-2][i])}
		}
		
		//2
		if (i < 7) //2a
		{
			if (global.board[i][j] == global.board[i+1][j-1] && global.board[i][j] == global.board[i+1][j+1]) {if (stop_at_one) {return true} else ds_list_add(list,global.board_gem_id[i][j])}
		else if (global.board[j][i] == global.board[j-1][i+1] && global.board[j][i] == global.board[j+1][i+1]) {if (stop_at_one) {return true} else ds_list_add(list,global.board_gem_id[j][i])}
		}
		if (i > 0) //2b
		{
			if (global.board[i][j] == global.board[i-1][j-1] && global.board[i][j] == global.board[i-1][j+1]) {if (stop_at_one) {return true} else ds_list_add(list,global.board_gem_id[i][j])}
		else if (global.board[j][i] == global.board[j-1][i-1] && global.board[j][i] == global.board[j+1][i-1]) {if (stop_at_one) {return true} else ds_list_add(list,global.board_gem_id[j][i])}
		}
		
		//3-4
		if (i>0) //3a-4a
		{
			if (global.board[i][j] == global.board[i][j-1] && global.board[i][j] == global.board[i-1][j+1]) {if (stop_at_one) {return true} else ds_list_add(list,global.board_gem_id[i-1][j+1])}
		else if (global.board[j][i] == global.board[j-1][i] && global.board[j][i] == global.board[j+1][i-1]) {if (stop_at_one) {return true} else ds_list_add(list,global.board_gem_id[j+1][i-1])}
			if (global.board[i][j] == global.board[i][j+1] && global.board[i][j] == global.board[i-1][j-1]) {if (stop_at_one) {return true} else ds_list_add(list,global.board_gem_id[i-1][j-1])}
		else if (global.board[j][i] == global.board[j+1][i] && global.board[j][i] == global.board[j-1][i-1]) {if (stop_at_one) {return true} else ds_list_add(list,global.board_gem_id[j-1][i-1])}
		}
		if (i<7) //3b-4b
		{
			if (global.board[i][j] == global.board[i][j-1] && global.board[i][j] == global.board[i+1][j+1]) {if (stop_at_one) {return true} else ds_list_add(list,global.board_gem_id[i+1][j+1])}
		else if (global.board[j][i] == global.board[j-1][i] && global.board[j][i] == global.board[j+1][i+1]) {if (stop_at_one) {return true} else ds_list_add(list,global.board_gem_id[j+1][i+1])}
			if (global.board[i][j] == global.board[i][j+1] && global.board[i][j] == global.board[i+1][j-1]) {if (stop_at_one) {return true} else ds_list_add(list,global.board_gem_id[i+1][j-1])}
		else if (global.board[j][i] == global.board[j+1][i] && global.board[j][i] == global.board[j-1][i+1]) {if (stop_at_one) {return true} else ds_list_add(list,global.board_gem_id[j-1][i+1])}
		}
	}
	
	if stop_at_one return false;
	else
	{
		var ret;
		if ds_list_empty(list) ret = noone;
		else ret = list[| irandom(ds_list_size(list)-1)]
		ds_list_destroy(list)
		return ret;
	}
}
/*
	[1] stop_at_one means that, if true, after we find a possible move, this function ends and returns true. 
		Otherwise, we save each gem that corresponds to a possible match 
		(the one that if it moves, it will produce a match).
	[2] Each possible move combination is described in a paint drawing I did. For each one, we check the
		center gem.
*/