///__save_file()

// Update SaveSystem variables
Obj_SaveSystem.io_fullscreen = window_get_fullscreen();
Obj_SaveSystem.io_musvolume = Obj_GameManager.MUSVolume;
Obj_SaveSystem.io_sfxvolume = Obj_GameManager.SFXVolume;

ini_open(Obj_SaveSystem.filename);
show_debug_message(Obj_SaveSystem.filename);
// Settings Data
ini_write_real("settings", "fullscreen", Obj_SaveSystem.io_fullscreen);
ini_write_real("settings", "musicvolume", Obj_SaveSystem.io_musvolume);
ini_write_real("settings", "sfxvolume", Obj_SaveSystem.io_sfxvolume);

// Player Data

// Map Data

// Flags
ini_close();

