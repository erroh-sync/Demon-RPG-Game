// Run Inherited Code
event_inherited();

// Item Declaration
menuitems[0,0] = "New Game";
menuitems[1,0] = "Load Game";
menuitems[2,0] = "Options";
menuitems[3,0] = "Exit";

// Declare Display Variables
focusfade = 0;
focusfade_max = 0.3;
focusoffset = 0;
focusoffset_max = 256;

// color values
colvals[0,0] = make_color_rgb(159,50,62);
colvals[1,0] = make_color_rgb(241,190,11);
colvals[2,0] = c_lime;
colvals[3,0] = c_white;

colvals[0,1] = make_color_rgb(159,50,62);
colvals[1,1] = make_color_rgb(241,190,11);
colvals[2,1] = c_lime;
colvals[3,1] = c_black;
global.menucol = colvals[selecteditem_y,0];
global.menucol2 = colvals[selecteditem_y,1];
bgCol = c_black;