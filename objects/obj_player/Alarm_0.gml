/// @description Execute matches
if execute_matches() > 0 {global.gems_are_stable = false; global.swapping = false;} //we executed matches
else
{
	if (global.swapping) //if we had no matches and this was after a swap, it means player did an illegal move
	{
		global.swapping = false; //next time we enter this block of code, dont think it was user swap
		audio_play_sound(snd_illegalmatch,0,false)
		swap(swapping_gem[0],swapping_gem[1]) //return gems to their place
	}
	else //if we had no matches (either after gems drop from cascade or from an illegal swap-back)
	{
		if (score >= global.points_needed) instance_create_depth(0,0,depth,obj_levelcomplete) //check if we completed the level
		else if find_possible_moves(true) {autosave(global.mode); global.gems_are_stable = true;} //check if we have a board with possible moves
		else //NO MORE MOVES
		{
			if global.mode == "normal"
			{
				global.gameover = true;
				file_delete("autosave_"+global.mode)
				with(obj_gem)
				{
					var g = instance_create_depth(x,y,depth,obj_gem_gameover) //shaking gem
					g.sprite_index = sprite_index
					instance_destroy(id,false) //destroy normal gem
				}
				alarm[1] = 90 //do the explosion sfx
			}
			else {} //shuffle board
		}
		//TRIVIA: In real Bejeweled, 'no possible moves' check surpasses 'level complete' check. So you can complete a level with no possible moves on board and lose!
	}
}
