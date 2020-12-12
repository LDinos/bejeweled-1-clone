function find_where_to_fall(j){
	for(var i = 0; i < 8; i++) if (global.board[i][j] != EMPTY) return obj_board.y + (i-1)*GRID + (GRID/2)
	return obj_board.y + 7*GRID + (GRID/2)
	//It checks in the for loop where the array is empty, and takes that place
	//If the board collumn is fully empty, then it will fall on the last row which is the "return" value
}