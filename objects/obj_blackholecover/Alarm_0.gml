/// @description Fade off then die
first_part = false
image_alpha -= 0.02
if image_alpha > 0 alarm[0] = 1
else instance_destroy()