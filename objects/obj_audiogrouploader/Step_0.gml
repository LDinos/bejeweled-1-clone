/// @description After loading, go to the game
if (audio_group_load_progress(audiogroup_music) == 100)
{
	ini_open("settings.ini")
		global.VolMus = ini_read_real("Settings","VolMus",1)
		global.VolFX = ini_read_real("Settings","VolFX",1)
		audio_group_set_gain(audiogroup_music, global.VolMus,0)
		audio_group_set_gain(audiogroup_default, global.VolFX,0)
	ini_close()
	instance_create_depth(0,0,0,obj_intro)
	instance_destroy()
}