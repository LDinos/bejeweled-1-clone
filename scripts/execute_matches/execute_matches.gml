// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function execute_matches(){
	global.board_gem_id = global.board	// Instead of doing a 2D 'for' loop for array creation, just copy paste an array on it
	var list_matched_gems = ds_list_create()	// List of gems that are going to be deleted
	var matches_found = false;					// How many matches did we do?
	with(obj_gem) //for each gem
	{
		var col = (x - obj_board.x) div GRID	// What collumn am I
		var row = (y - obj_board.y) div GRID	// What row am I
		global.board_gem_id[row][col] = id		// Add me in the gem ID array
		global.board[row][col] = skin			// Add my skin in the gem skins array
	}
	
	for(var i = 0; i < 8; i++)
	{ // ni,nj -> match number index in collumns and rows respectively (3-gem match? 4-gem match?)
	 // samegem -> is the gem im checking the same as the previous one?
		var ni = 1; var nj = 1;
		for(var j = 1; j < 8; j++)
		{
			//HORIZONTAL
			var samegem = false;
			if (global.board[i][j] == global.board[i][j-1]) {nj++; samegem = true;}
			else if (nj < 3) nj = 1
			//Execute matches when current gem =/= previous gem, but the 3+ gems before me were the same
			//Or when we reach the end of the loop and it happens that the edge gems are the same
			if (nj >= 3 && !samegem) || (j == 7 && nj>=3) //Execute matches
			{
				for(var k = j - nj+samegem; k < j+samegem; k++) ds_list_add(list_matched_gems,global.board_gem_id[i][k])
				var center = global.board_gem_id[i][round(mean(j-1+samegem,j-nj+samegem))]	
				if (nj > 3) audio_play_sound(snd_4match,0,false)
				else audio_play_sound(snd_3match,0,false)
				var match_num_xplier = nj-2 //a 3 gem match gives x1, 4 gem match x2 etc
				nj = 1;
				matches_found++
				add_score(center.x,center.y,match_num_xplier*global.points_addup*global.cascades*matches_found)
			}
			//VERTICAL
			var samegem = false;
			if (global.board[j][i] == global.board[j-1][i]) {ni++; samegem = true;}
			else if (ni < 3) ni = 1
			//Execute matches when current gem =/= previous gem, but the 3+ gems before me were the same
			//Or when we reach the end of the loop and it happens that the edge gems are the same
			if (ni >= 3 && !samegem) || (j == 7 && ni>=3) //Execute matches
			{
				for(var k = j - ni+samegem; k < j+samegem; k++) ds_list_add(list_matched_gems,global.board_gem_id[k][i])
				var center = global.board_gem_id[round(mean(j-1+samegem,j-ni+samegem))][i]	
				if (ni > 3) audio_play_sound(snd_4match,0,false)
				else audio_play_sound(snd_3match,0,false)
				var match_num_xplier = ni-2 //a 3 gem match gives x1, 4 gem match x2 etc
				ni = 1;
				matches_found++
				add_score(center.x,center.y,match_num_xplier*global.points_addup*global.cascades*matches_found)
			}
		}
	}
	
	for(var i = 0; i < ds_list_size(list_matched_gems); i++) gem_destroy(list_matched_gems[|i]) //Kill them
	
	//CASCADE
	if (matches_found)
	{
		var casc = clamp(global.cascades,1,6)						//cascade sound effects go from 1 to 6
		var asset_str = asset_get_index("snd_cascade"+string(casc)) //snd_cascade1, 2, 3, 4...etc
		audio_play_sound(asset_str,0,false)
		global.cascades++
		if (matches_found > 1) audio_play_sound(snd_multimatch,0,false) //Double+ match
	}

	ds_list_destroy(list_matched_gems)
	return matches_found;
}
/*
	The way this functions works in parts is:
	(1) Make the arrays that include the gem id's and skins
	(2) For each row (collumn), find horizontal (vertical) matches corresponding for each collumn (row), thus why we have
		a 2D 'for' loop. We execute Horizontal matches first, then we check Vertical.
		Points are also calculated at the same time.
	(3) We kill the gems and make some calculations like cascades, multimatches and what sounds to be played.
*/