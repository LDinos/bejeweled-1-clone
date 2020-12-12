/// @description The gem object
set_skin(irandom(NUM_SKINS))
image_speed = 0 //don't animate
image_xscale = GRID/sprite_width //Fit exactly in one square
image_yscale = image_xscale
selected = false //am i selected by the player
die_anim_alpha = 0;
swap_anim_alpha = 0
SWAP_Y = 0 //End swap point
SWAP_X = 0
SWAP_X_START = 0 //Starting swap point
SWAP_Y_START = 0
current_speed = 0
fresh_spawn = true; //when I fresh spawn, the global.gems_are_stable depends on me!
global.gems_needed_to_stay++ // I am one of the gems that is currently falling / is not still.
MOVE_TO_Y = find_where_to_fall((x - obj_board.x) div GRID); // The gem will keep falling until it reaches that coordinate

