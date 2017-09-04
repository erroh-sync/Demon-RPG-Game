// FocusOffset
var fa = focusanim * 512;

for(var i = 0; i < array_height_2d(menuitems); i++)
{
	// Selection
	var f = 0;
	if(i == selecteditem_y){
		f = gleamframe;
		draw_sprite(s_ListArrow, 0, 1280 - 390 + fa + (itemanim[i] * 36), 720 - ((array_height_2d(menuitems) - i) * 48));
	}
	
	// Button Background
	draw_sprite(s_ListButton, f, 1280 + fa + (itemanim[i] * 36), 720 - ((array_height_2d(menuitems) - i) * 48));
	                            
	// Skill Name
	var name = "----";
	var pre = "";
	if(menuitems[i,0] != 0){
		pre = "#w" + string_format(30 * (itemanim[i]), 3, 0);	
		// Skill Cost
		__draw_text( 1280 + fa - 96, 720 - ((array_height_2d(menuitems) - i) * 48) - 20, "--SP", s_SmlKomikaFont, 0.45, 0);
		name = __interpret_loc(menuitems[i,0], e_LocType.elt_skillsloc);
	}
	__draw_text( 1280 - 375 + fa + (itemanim[i] * 36), 720 - ((array_height_2d(menuitems) - i) * 48) - 20, pre + name, s_SmlKomikaFont, 0.45, 0);
}