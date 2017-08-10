// Run Inherited Code
event_inherited();

// Functionality
__main_menu_actions();

// Color fade
if(selecteditem_y >= 0){
	global.menucol = merge_color(global.menucol, colvals[selecteditem_y,0],0.075);
	global.menucol2 = merge_color(global.menucol2, colvals[selecteditem_y,1],0.075);

	var bc = c_black; if(selecteditem_y == 3) bc = c_white;
	bgCol = merge_color(bgCol, bc,0.075);
}