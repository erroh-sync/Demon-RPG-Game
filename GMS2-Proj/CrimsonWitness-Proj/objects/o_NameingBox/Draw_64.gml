draw_self();

// Upper Row
for(var i = 0; i < array_length_2d(menuitems, 0); i++)
{
	var prefix = "";
	if(selecteditem_x == i && selecteditem_y == 0)
		prefix = "#c255255000#w030"
	__draw_text(x - sprite_width/2 + (i+1.5) * 34, y - sprite_height/2 + 20, prefix + string(menuitems[0,i]), s_MilleniumFont, 1.0, 1.0);
}

// Middle Row
for(var i = 0; i < array_length_2d(menuitems, 1); i++)
{
	var prefix = "";
	if(selecteditem_x == i && selecteditem_y == 1)
		prefix = "#c255255000#w030"
	__draw_text(x - sprite_width/2 + (i+1.5) * 34, y - sprite_height/2 + 60, prefix + string(menuitems[1,i]), s_MilleniumFont, 1.0, 1.0);
}

// Lower Row
for(var i = 0; i < array_length_2d(menuitems, 2); i++)
{
	var prefix = "";
	if(selecteditem_x == i && selecteditem_y == 2)
		prefix = "#c255255000#w030"
	__draw_text(x - sprite_width/2 + (i+1.5) * 34, y - sprite_height/2 + 100, prefix + string(menuitems[2,i]), s_MilleniumFont, 1.0, 1.0);
}

// Lowest Row
for(var i = 0; i < array_length_2d(menuitems, 3); i++)
{
	var prefix = "";
	if(selecteditem_x == i && selecteditem_y == 3)
		prefix = "#c255255000#w030"
	__draw_text(x - sprite_width/2 + 51 + i * 90, y - sprite_height/2 + 150, prefix + string(menuitems[3,i]), s_MilleniumFont, 0.4, 1.0);
}