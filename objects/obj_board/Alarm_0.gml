/// @description Calculate where gems should fall
for(var j = 0; j < 8; j++)
{
	var k = 7;
	var inv_k = 0;
	for(var i = 7; i >= 0; i--)
	{
		var g = instance_position(x + j*GRID + GRID/2,y + i*GRID + GRID/2,obj_gem)
		if (g != noone) {g.MOVE_TO_Y = y + k*GRID + GRID/2; showme[k][j] = g.skin; global.board[k][j] = g.skin; k--}
		else {global.board[inv_k][j] = EMPTY; inv_k++}
	}
	for(var i = 0; i <= k; i++)
	{
		var g = instance_create_depth(x + GRID*j + GRID/2, y - GRID*(i+1) - i*(GRID) + (GRID/2), DEPTH_GEMS,obj_gem)
		global.board[k-i][j] = g.skin
		showme[k-i][j] = g.skin
	}
}