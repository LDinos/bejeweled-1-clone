// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shuffle_board(){
	with(obj_gem) 
	{
		var g = instance_create_depth(x,y,depth,obj_gem_shuffle); 
		g.sprite_index = sprite_index
		g.alarm[0] = (8-((y-obj_board.y) div GRID))*15 + irandom_range(-14,15)
		instance_destroy(id,false)
	}
}