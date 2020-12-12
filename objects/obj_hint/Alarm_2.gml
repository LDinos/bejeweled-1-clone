/// @description Hint alpha fadein
if (hint_alpha < 1)
{
	if !global.paused hint_alpha += 0.05
	alarm[2] = 1
}