/// @description
ini_open("settings.ini")
	ini_write_string("Settings","last_mode",global.mode)
ini_close()