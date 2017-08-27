event_inherited();

// Functionality
__combat_main_menu();

// Color fade
if(selecteditem_y >= 0){
	global.menucol = merge_color(global.menucol, colvals[selecteditem_x],0.2);
}