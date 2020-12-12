/// @description Fade combo points out
if combo_alpha > 0
{
	if !global.paused combo_alpha-=0.05
	alarm[1] = 1
}

