randomize()
ini_open("settings.ini")
	global.mode = ini_read_string("Settings","last_mode","normal")
ini_close()