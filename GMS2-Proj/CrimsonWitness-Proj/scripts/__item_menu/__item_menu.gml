/// __skill_menu();
					
if(global.input_select_down > 0){
	// Do stuff here
	if(instance_exists(o_ItemMenu_KeysTab)) // If we're in the Key Items tab
		return; // Should switch on the selected item with a default value of displaing a message.
	else if(instance_exists(o_ItemMenu_RingsTab)) // If we're in the Rings tab
		// Equip Ring Here
		o_PlayerInfo.curr_ring = o_ItemMenu_ItemTab.menuitems[o_ItemMenu_ItemTab.selecteditem_y,0];
	else // Assume Items Tab
		return; // Should switch on the selected item with a default value of displaing a message.
}
else if(global.input_select_down < 0){
		instance_destroy();
}