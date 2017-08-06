// Run Inherited Code
event_inherited();

// Functionality
__main_menu_actions();

// Color fade
global.menucol = merge_color(global.menucol, colvals[selecteditem_y],0.075);

var bc = c_black; if(selecteditem_y == 3) bc = c_white;
bgCol = merge_color(bgCol, bc,0.075);