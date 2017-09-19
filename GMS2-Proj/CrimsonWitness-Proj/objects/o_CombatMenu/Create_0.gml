event_inherited();

// Item Declaration
menuitems[0,0] = 14;
menuitems[0,1] = 15;
menuitems[0,2] = 16;
menuitems[0,3] = 17;

// Animation
focusanim = 0;
itemanim = 0;
for(var i = 0; i < array_length_2d(menuitems,0); i++){itemanim[i] = 1;}

//Ensure other menus exist
instance_create_layer(0,0,"gui_layer",o_CombatTargetting);

depth += 1;