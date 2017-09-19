/******************************
 3d Setup
******************************/
sfml_init();
gpu_set_zwriteenable(true);//Enables writing to the z-buffer
gpu_set_ztestenable(true);//Enables the depth testing, so far away things are drawn beind closer things
gpu_set_texrepeat(true);

/******************************
 Localization
******************************/
enum e_LocType{
	elt_guiloc,
	elt_charloc,
	elt_skillsloc,
	elt_skilldescloc,
	elt_itemsloc,
	elt_itemdescloc,
	elt_keyitemsloc,
	elt_keyitemdescloc,
	elt_ringsloc,
	elt_ringdescloc,
	elt_dialoc
};
global.uniFont = sprite_add("s_UniFont.png",0,0,0,0,0);
global.guilocalization = ds_grid_create(1,10);
global.characterslocalization = ds_grid_create(1,10);
global.skillslocalization = ds_grid_create(1,10);
global.skilldesclocalization = ds_grid_create(1,10);
global.itemslocalization = ds_grid_create(1,10);
global.itemdesclocalization = ds_grid_create(1,10);
global.keyitemslocalization = ds_grid_create(1,10);
global.keyitemdesclocalization = ds_grid_create(1,10);
global.ringslocalization = ds_grid_create(1,10);
global.ringdesclocalization = ds_grid_create(1,10);
global.dialoguelocalization = ds_grid_create(1,10);
global.loctextwidth = 0;
__read_loc_file("localization/localization.english", 0);
__read_loc_file("localization/localization.japanese", 1);

/******************************
 Skill Listing
******************************/
global.skills = 0;

// Index in array corresponds to text index in localization grids
// 0 = Skill Object
// 1 = Skill Cost

// RingPunch
global.skills[2,0] = o_TalkBase;
global.skills[2,1] = 0; 

/******************************
 3d Model Loading
******************************/
global.models = ds_map_create();
global.textures = ds_map_create();
__batch_import_assets("config/assetconfig.cfg");

/******************************
 Save Data
******************************/
global.savefile = working_directory + "playerdata.sav";

// Player Save Data
global.p_saved_x = 0;
global.p_saved_y = 0;
global.p_saved_r = dir.nulldir;
global.p_saved_map = asset_get_index("r_TitleScreen");
global.p_name = "";

// Flags
for(var i = 0; i < 1024; i++) // For more flags increase 1024. Don't excede 9999 though!
{
	global.gameflags[i] = false;
}

// Player Data
if(!instance_exists(o_PlayerInfo))
	instance_create_layer(0,0,layer,o_PlayerInfo);
	
// Load Stuff
//__load_options();

/******************************
 Settings Data
******************************/
global.settingsfile = working_directory + "settings.ini";

// Language Settings
global.currentlang = 1;

// Audio Settings
global.musvolume = 5;
global.sfxvolume = 5;

// Load Stuff
__load_options();

/******************************
 Input Data
******************************/
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

global.input_rtrig = 0;
global.input_rtrig_down = 0;

h_last = 0;
v_last = 0;

/******************************
 Music Data
******************************/
// Current Song
global.currsongindex = -1;
global.currsong = -1;

global.musictracks = 0; // 0 = Asset, 1 = LoopEnd, 2 = LoopLength
// TitleTheme
// BattleTheme
global.musictracks[1, 0] = bgm_CombatRand;
global.musictracks[1, 1] = 63.90;
global.musictracks[1, 2] = 60.70;
