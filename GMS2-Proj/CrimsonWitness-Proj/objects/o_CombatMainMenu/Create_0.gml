event_inherited();

// Item Declaration
menuitems[0,0] = 14;
menuitems[0,1] = 15;
menuitems[0,2] = 16;
menuitems[0,3] = 17;

// Colors
colvals[0] = global.ringcol;
colvals[1] = global.spellcol;
colvals[2] = global.itemcol;
colvals[3] = c_white;

//Ensure other menus exist
instance_create_layer(0,0,"gui_layer",o_CombatSkillMenu);
instance_create_layer(0,0,"gui_layer",o_CombatMenuTargetting);

infobar_surf = surface_create(1280, sprite_get_height(s_Infobar));
infobar_focus = 0.0;

depth += 1;