function swap(gem1,gem2){
	global.cascades = 1 //Reset stats 
	global.has_said_excellent = false
	global.combo_points = 0
	swapping_gem[0] = gem1 //variables for if it is an illegal move, we can use these to return them back
	swapping_gem[1] = gem2
	
	gem1.SWAP_X = gem2.x
	gem1.SWAP_Y = gem2.y
	gem1.SWAP_X_START = gem1.x
	gem1.SWAP_Y_START = gem1.y
	
	gem2.SWAP_X = gem1.x
	gem2.SWAP_Y = gem1.y
	gem2.SWAP_X_START = gem2.x
	gem2.SWAP_Y_START = gem2.y
	
	with(gem1) alarm[1] = 1
	with(gem2) alarm[1] = 1	
}