/// @description Swap animation
swap_anim_alpha += 1/SWAP_FRAMES
x = lerp(SWAP_X_START, SWAP_X, animcurve_channel_evaluate(global.swap_anim_channel,swap_anim_alpha))
y = lerp(SWAP_Y_START, SWAP_Y, animcurve_channel_evaluate(global.swap_anim_channel,swap_anim_alpha))

if (swap_anim_alpha < 1) alarm[1] = 1
else 
{
	selected = false; if obj_player.selected_gem == id {obj_player.selected_gem = noone}; swap_anim_alpha = 0;
	with(obj_player) alarm[0] = 1
}
