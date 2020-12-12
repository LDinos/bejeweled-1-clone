/// @description Swapping
var swapping = global.swapping //Is user currently swapping?
var mouse_on_board = (mouse_y > obj_board.y-GRID/2) //Is mouse on the board and not on the UI elements?

if mouse_check_button_pressed(mb_left) && !swapping && mouse_on_board //Single mouse click\\
{
	var g = instance_position(mouse_x,mouse_y,obj_gem)
	if (g != noone)
	{
		if (selected_gem == noone) {gem_select(g)} // We click on gem when nothing was selected
		else if (g == selected_gem) {g.selected = false; selected_gem = noone} // We click on the gem that was previously selected
		else if (abs(g.x - selected_gem.x) == GRID && g.y-selected_gem.y == 0) // We click on a gem close to us
			|| (abs(g.y - selected_gem.y) == GRID && g.x-selected_gem.x == 0)
		{
			if (global.gems_are_stable)
			{
				swap(g,selected_gem)
				global.swapping = true
				g.selected = true
			}
		}
		else {selected_gem.selected = false; gem_select(g)} // We click on a gem not close to us (unselect the previous gem)
	}
}
if mouse_check_button(mb_left) && selected_gem != noone && !swapping && mouse_on_board //Dragging mechanic here\\
{
	var xx = 0
	var yy = 0
	var is_drag_horizontal = (abs(mouse_x - selected_gem.x) >= GRID/2) && (abs(selected_gem.y - mouse_y) < GRID/2)
	var is_drag_vertical = (abs(selected_gem.y - mouse_y) >= GRID/2)
	
	if (is_drag_horizontal) xx = GRID*sign(mouse_x - selected_gem.x) //did we drag more horizontally?
	else if (is_drag_vertical) yy = GRID*sign(mouse_y - selected_gem.y) //did we drag more vertically?
	var g = instance_position(selected_gem.x + xx,selected_gem.y + yy,obj_gem) //gem selection depends on drag direction
	
	if (g != selected_gem) && (g != noone) && (global.gems_are_stable)
	{
		var gem_is_horizontally_near = (abs(g.x - selected_gem.x) == GRID && g.y-selected_gem.y == 0)
		var gem_is_vertically_near = (abs(g.y - selected_gem.y) == GRID && g.x-selected_gem.x == 0)
		if (gem_is_horizontally_near || gem_is_vertically_near) // We click on a gem close to us
		{
			swap(g,selected_gem)
			global.swapping = true
			g.selected = true
		}
	}
}