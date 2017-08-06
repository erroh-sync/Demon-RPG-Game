// Run Inherited Code
event_inherited();

// Item Declaration
menuitems[0,0] = "D1";
menuitems[1,0] = "D2";

// Declare Display Variables
itemwave[0] = 0;

itemanim[0] = 0;

focusfade = 0;
focusfade_max = 0;
focusoffset = 0;
focusoffset_max = 0;

held_y_position = -1;

fog_surf = surface_create(room_width, sprite_get_height(s_MenuFog) * 1.5);