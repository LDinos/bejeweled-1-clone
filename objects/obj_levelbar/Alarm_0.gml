/// @description Deplete bar
if (!global.paused) lost_points -= global.level*(global.points_addup/5)
	if (level_points <= 0) && (global.gems_are_stable) 
	{
		alarm[0] = -1; // Stop depleting bar 
		create_fancy_text("OUT OF TIME!")
		global.gameover = true;
		global.gems_are_stable = false;
		alarm[1] = -1 //stop warning sfx
		file_delete("autosave_"+global.mode)
		with(obj_gem)
		{
			var g = instance_create_depth(x,y,depth,obj_gem_gameover) //shaking gem
			g.sprite_index = sprite_index
			instance_destroy(id,false) //destroy normal gem
		}
		with(obj_player) alarm[1] = 90 //do the explosion sfx
	}
else 
	alarm[0] = ceil(60/global.level)
