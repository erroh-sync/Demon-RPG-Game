event_inherited();

// Item Declaration
menuitems[0,0] = 14;
menuitems[0,1] = 15;
menuitems[0,2] = 16;
menuitems[0,3] = 17;

// Colors
colvals[0] = make_color_rgb(159,50,62);
colvals[1] = make_color_rgb(241,190,11);
colvals[2] = c_lime;
colvals[3] = c_white;

//Ensure other menus exist
instance_create_layer(0,0,"gui_layer",o_CombatSkillMenu);
instance_create_layer(0,0,"gui_layer",o_CombatMenuTargetting);