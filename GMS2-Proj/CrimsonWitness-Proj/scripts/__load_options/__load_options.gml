///__load_options();
ini_open(global.settingsfile);
window_set_fullscreen(ini_read_real("settings", "fullscreen", false));
global.musvolume = ini_read_real("settings", "musicvolume", 5);
global.sfxvolume = ini_read_real("settings", "sfxvolume", 5);
ini_close();