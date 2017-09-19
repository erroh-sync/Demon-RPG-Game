// Menu Bottom
draw_sprite(s_MenuBottom, 0, x, y);

// Menu Buttons
for(var i = 0; i < array_length_1d(displayitems); i++)
{
	
	// Button Background
	draw_sprite(s_MenuItemButton, i == (selecteditem_y - topdisp), x, y - (array_length_1d(displayitems) - (i+1)) * sprite_get_height(s_MenuItemButton));
	                            
	// Text 
	var name = "----";
	
	if(displayitems[i] != 0)
		name = __interpret_loc(displayitems[i], e_LocType.elt_skillsloc);
		
	// TODO: Draw the SP cost of the skill
		
	__draw_text( x - 512, y - (array_length_1d(displayitems) - (i+1)) * sprite_get_height(s_MenuItemButton) - 75, name, s_MedKomikaFont, 0.45, 0);
}  

// Slider
var slider_y = lerp(array_length_1d(displayitems) * sprite_get_height(s_MenuItemButton), sprite_get_height(s_MenuItemButton), selecteditem_y/(array_height_2d(menuitems) - 1)) - 1;
draw_sprite(s_MenuSlider, 0, x - 6, y - slider_y);

// Menu Fire
draw_sprite_ext(s_SkillMenuFire, fireframe, x - 256, y - array_length_1d(displayitems) * sprite_get_height(s_MenuItemButton) - 40, fireanim, sin(lerp(0, pi * 0.7, fireanim)) * 1.2, 0.0, c_white, 1.0);

// Menu Topper
draw_sprite(s_SkillMenuTopper, 0, x, y - array_length_1d(displayitems) * sprite_get_height(s_MenuItemButton));

// Title
__draw_text( x - 512, y - array_length_1d(displayitems) * sprite_get_height(s_MenuItemButton) - 64, "#w040" + __interpret_loc( 15, e_LocType.elt_guiloc), s_MedKomikaFont, 0.5, 0);
