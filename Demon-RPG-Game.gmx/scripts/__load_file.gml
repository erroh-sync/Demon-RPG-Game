///__load_file()
if(file_exists(Obj_SaveSystem.filename)){
    ini_open(Obj_SaveSystem.filename);
    show_debug_message(Obj_SaveSystem.filename);
    // Settings Data
    Obj_SaveSystem.io_fullscreen = ini_read_real("settings", "fullscreen", Obj_SaveSystem.io_fullscreen);
    window_set_fullscreen(Obj_SaveSystem.io_fullscreen);
    Obj_SaveSystem.io_musvolume = ini_read_real("settings", "musicvolume", Obj_SaveSystem.io_musvolume);
    Obj_GameManager.MUSVolume = Obj_SaveSystem.io_musvolume;
    Obj_SaveSystem.io_sfxvolume = ini_read_real("settings", "sfxvolume", Obj_SaveSystem.io_sfxvolume);
    Obj_GameManager.SFXVolume = Obj_SaveSystem.io_sfxvolume;
    
    // Player Data
    
    // Map Data
    
    // Flags
    ini_close();
}else{
    //
}
