// 3d Setup
sfml_init();
gpu_set_zwriteenable(true);//Enables writing to the z-buffer
gpu_set_ztestenable(true);//Enables the depth testing, so far away things are drawn beind closer things
gpu_set_texrepeat(true);

// Localization Importing
enum e_LocType{
	elt_guiloc,
	elt_charloc,
	elt_skillsloc,
	elt_itemsloc,
	elt_dialoc
};
global.uniFont = sprite_add("s_UniFont.png",0,0,0,0,0);
global.guilocalization = ds_grid_create(1,10);
global.characterslocalization = ds_grid_create(1,10);
global.skillslocalization = ds_grid_create(1,10);
global.itemslocalization = ds_grid_create(1,10);
global.dialoguelocalization = ds_grid_create(1,10);
global.loctextwidth = 0;
//for(var i = 0; i < 16; i++){global.loctextwidth[i] = 0.0;}
__read_loc_file("localization/localization.english", 0);
__read_loc_file("localization/localization.japanese", 1);

// 3d asset importing
global.models = ds_map_create();
global.textures = ds_map_create();
__batch_import_assets("config/assetconfig.cfg");

// External File Names
global.settingsfile = working_directory + "settings.ini";

// Player Save Data
global.p_saved_x = 0;
global.p_saved_y = 0;
global.p_saved_r = dir.nulldir;
global.p_name = "";

// Flags
for(var i = 0; i < 1024; i++) // For more flags increase 1024. Don't excede 9999 though!
{
	global.gameflags[i] = false;
}

// Language Settings
global.currentlang = 1;

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

global.input_rh = 0;
global.input_rv = 0;

global.input_shoulder = 0;
global.input_shoulder_down = 0;
global.input_shoulder_up = 0;

global.input_select = 0;
global.input_select_down = 0;
global.input_select_up = 0;

h_last = 0;
v_last = 0;