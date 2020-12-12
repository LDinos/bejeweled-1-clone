/// @description When are gems considered still?
if !global.paused
{
	if (global.gems_needed_to_stay > 0) || (global.swapping) global.gems_are_stable = false;
}

