// Run Inherited Code
event_inherited();

// Item Declaration
menuitems[0,0] = "FullScreen: ";
menuitems[1,0] = "Music Volume: ";
menuitems[2,0] = "SFX Volume: ";
menuitems[3,0] = "Back";

// Declare Display Variables
focusfade_max = 0;
focusoffset = -192;
focusoffset_max = -256;

hasfocus = false;

// Load Options
__load_options();