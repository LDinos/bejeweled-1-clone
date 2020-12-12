/// @description Die
die_anim_alpha += 1/DEATH_FRAMES //a gem should die after 12 frames
image_xscale = lerp(image_xscale,0,die_anim_alpha) //shrink more and more
image_yscale = image_xscale
if die_anim_alpha < 1 alarm[0] = 1 //if we haven't shrunk fully yet, re-do
else instance_destroy() //else, just kill me
