function gem_initial_spawn(){
	//1) Create the arrays
	for (var i = 0; i < 8; i++) for (var j = 0; j < 8; j++) {global.board[i][j] = EMPTY}
	
	//2) Create the gems
	for (var i = 0; i < 8; i++)
	{
		for (var j = 0; j < 8; j++)
		{
			var g = instance_create_depth(x + GRID*j + GRID/2, y - (GRID*2*i) - (j/4)*(GRID) - GRID, DEPTH_GEMS,obj_gem)
			g._i = 7-i
			g._j = j
			global.board[7-i][j] = g.skin
		}
	}
	
	//3) Create gems until gems are not initially matching and there is at least one possible match
	do
	{
		var matches_available = false;
		//3a) Find which gems are matching, and remake the whole board if so
		find_matching_gems()
		
		//3b) See if we have any matches available to do
		matches_available = find_possible_moves(true)
		if (!matches_available) with(obj_gem) {set_skin(irandom(NUM_SKINS)); global.board[_i][_j] = skin}
	}
	until matches_available
	
}