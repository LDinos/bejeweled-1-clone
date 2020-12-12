// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_fancy_text(str){
	var t = instance_create_depth(obj_board.x + GRID*4, obj_board.y + GRID*3,DEPTH_BACKGROUND_UI-1,obj_text_fancy)
	t.str = str
}