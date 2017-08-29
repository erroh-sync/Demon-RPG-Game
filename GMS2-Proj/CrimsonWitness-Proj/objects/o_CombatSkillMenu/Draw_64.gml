// FocusOffset
var fa = focusanim * 512;

for(var i = 0; i < array_height_2d(menuitems); i++)
{
	var f = 0;
	if(i == selecteditem_y){
		f = gleamframe;
		draw_sprite_ext(s_ListArrow, 0, 1280 - 390 + fa + (itemanim[i] * 36), 720 - ((array_height_2d(menuitems) - i) * 48),1,1,0,global.menucol,1);
	}
	
	draw_sprite_ext(s_ListButton, f, 1280 + fa + (itemanim[i] * 36), 720 - ((array_height_2d(menuitems) - i) * 48),1,1,0,global.menucol,1);
	
	// Text
	var prestring1 = "#c" + string_format(color_get_red(global.menucol), 3, 0) + string_format(color_get_green(global.menucol), 3, 0) + string_format(color_get_blue(global.menucol), 3, 0);
	var prestring2 = "#w" + string_format(30 * (itemanim[i]), 3, 0);	
	__draw_text_uni(1280 - 375 + fa + (itemanim[i] * 36), 720 - ((array_height_2d(menuitems) - i) * 48) - 14, prestring1 + prestring2 + __interpret_loc(menuitems[i,0], e_LocType.elt_skillsloc),1.5, 0.65, 0);
	
	
	__draw_text_uni(1280 + fa - 70, 720 - ((array_height_2d(menuitems) - i) * 48) - 14, prestring1 + "--SP",1.5, 0.65, 0);
}

// Skill Desc
if(hasfocus){
	// Text
	var prestring1 = "#c" + string_format(color_get_red(global.menucol), 3, 0) + string_format(color_get_green(global.menucol), 3, 0) + string_format(color_get_blue(global.menucol), 3, 0);
	var prestring2 = "#w" + string_format(10, 3, 0);	
	__draw_text_uni(16, 720 - sprite_get_height(s_Infobar) - 12, prestring1 + prestring2 + __interpret_loc(menuitems[selecteditem_y,0], e_LocType.elt_skilldescloc),1.5, 0.65, 0);
}