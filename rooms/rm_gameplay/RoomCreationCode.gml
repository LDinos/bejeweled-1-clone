draw_set_halign(fa_center)
draw_set_valign(fa_middle)
audio_stop_all()
if (asset_get_index("mus_network") != -1) audio_play_sound(mus_network,0,true)
ini_open("settings.ini")
	global.VolMus = ini_read_real("Settings","VolMus",1)
	global.VolFX = ini_read_real("Settings","VolFX",1)
	audio_group_set_gain(audiogroup_music, global.VolMus,0)
	audio_group_set_gain(audiogroup_default, global.VolFX,0)
ini_close()
global.paused = false
global.cascades = 1
global.gems_are_stable = false;
global.swap_anim_channel = animcurve_get_channel(anim_swap,"swap_channel")
global.swapping = false;
global.combo_points = 0
global.has_said_excellent = false;
global.gameover = false;
