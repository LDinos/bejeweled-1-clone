draw_set_halign(fa_center)
draw_set_valign(fa_middle)
audio_stop_all()
if (global.mode == "normal") audio_play_sound(mus_network,0,true)
else audio_play_sound(mus_timetrial,0,true)
global.cascades = 1
global.gems_are_stable = false;
global.swap_anim_channel = animcurve_get_channel(anim_swap,"swap_channel")
global.swapping = false;
global.combo_points = 0
global.has_said_excellent = false;
global.gameover = false;
