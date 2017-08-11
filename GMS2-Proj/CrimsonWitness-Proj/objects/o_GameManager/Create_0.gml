// 3d Setup
sfml_init();
gpu_set_zwriteenable(true);//Enables writing to the z-buffer
gpu_set_ztestenable(true);//Enables the depth testing, so far away things are drawn beind closer things
gpu_set_cullmode(cull_noculling);

// 3d asset importing
global.models = ds_map_create();
__batch_import_models("config/modelconfig.cfg");

// External File Names
global.settingsfile = working_directory + "settings.ini";

// Player Save Data
global.p_saved_x = 0;
global.p_saved_y = 0;
global.p_saved_r = dir.nulldir;
global.p_name = "";

// Flags
global.gameflags[0] = false;
global.localflags[0] = false;

// Audio Settings
global.musvolume = 5;
global.sfxvolume = 5;

// Input Init
global.input_h = 0;
global.input_h_down = 0;
global.input_h_up = 0;

global.input_v = 0;
global.input_v_down = 0;
global.input_v_up = 0;

global.input_shoulder = 0;
global.input_shoulder_down = 0;
global.input_shoulder_up = 0;

global.input_select = 0;
global.input_select_down = 0;
global.input_select_up = 0;

h_last = 0;
v_last = 0;