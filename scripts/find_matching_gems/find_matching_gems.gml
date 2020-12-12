//When first creating a board, we need to make sure we don't have matches already!
//When we find at least one match, remake the gem skins and re-do the function.
function find_matching_gems(){
	do
	{
		var matchesfound = false;
		for(var i = 0; i < 8; i++)
		{
			for(var j = 1; j < 8-1; j++)
			{
/*HORIZONTAL*/	if (global.board[i][j] == global.board[i][j-1]) && (global.board[i][j] == global.board[i][j+1])
				{
					matchesfound = true; 
					with(obj_gem) {set_skin(irandom(NUM_SKINS)); global.board[_i][_j] = skin}
					break;
				}
				
/*VERTICAL*/	if (global.board[j][i] == global.board[j-1][i]) && (global.board[j][i] == global.board[j+1][i])
				{
					matchesfound = true; 
					with(obj_gem) {set_skin(irandom(NUM_SKINS)); global.board[_i][_j] = skin}
					break;
				}
			}
			if matchesfound break;
		}
	}
	until !matchesfound
}