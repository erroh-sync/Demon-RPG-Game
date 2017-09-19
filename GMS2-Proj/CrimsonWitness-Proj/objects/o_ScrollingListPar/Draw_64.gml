// Code is just here as an example. Should be overwritten.

// Buttons
for(var i = 0; i < array_length_1d(displayitems); i++)
{
	
	// Button Background
	draw_sprite(s_ListButton, 0, x, y - ((array_length_1d(displayitems) - i) * 48));
	                            
	// Text 
	var name = __interpret_loc(displayitems[i], e_LocType.elt_guiloc);
	var pre = "";
	
	if(i == (selecteditem_y - topdisp))
		pre = "#w030";
		
	__draw_text( x - 320, y - ((array_length_1d(displayitems) - i) * 48) - 20, pre + name, s_SmlKomikaFont, 0.45, 0);
}