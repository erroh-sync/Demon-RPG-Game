///__save_options();
ini_open(global.settingsfile);
ini_write_real("settings", "fullscreen", window_get_fullscreen());
ini_write_real("settings", "musicvolume", global.musvolume);
ini_write_real("settings", "sfxvolume", global.sfxvolume);
ini_write_real("settings", "language", global.currentlang);
ini_close();