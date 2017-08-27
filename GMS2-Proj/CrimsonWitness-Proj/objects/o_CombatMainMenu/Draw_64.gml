// FocusOffset
var fa = focusanim * 128;

for(var i = 0; i < array_length_2d(menuitems, 0); i++)
{
	// Button
	draw_sprite_ext(s_RootActionButton, 0, 838 + (126 * i), 720 + (itemanim[i] * 32) + fa,1.0,1.0,0.0,global.menucol,1.0);
	
	// Text
	var stringoffset = (string_length(__interpret_loc(menuitems[i], e_LocType.elt_guiloc)) - 1)/2 * ((16 * 1.5) * (global.loctextwidth[global.currentlang] + 0.65));
	
	var prestring = "#c" + string_format(color_get_red(global.menucol), 3, 0) + string_format(color_get_green(global.menucol), 3, 0) + string_format(color_get_blue(global.menucol), 3, 0)
					+ "#w" + string_format(30 * (1 - itemanim[i]), 3, 0);
	__draw_text_uni(838 + (126 * i) - stringoffset, 720 - 34 + (itemanim[i] * 64) + fa, prestring + __interpret_loc(menuitems[i], e_LocType.elt_guiloc),1.5, 0.65, 0);

	// Icon
	var iconrotation = sin(current_time/192) *  15;
	draw_sprite_ext(s_RootActionIcons, i,
					838 + (126 * i),
					720 - 32 - ((1 - itemanim[i]) * 56) + fa,
					(0.5 + ((1 - itemanim[i])/2)),
					(0.5 + ((1 - itemanim[i])/2)),
					(1 - itemanim[i]) * iconrotation,
					global.menucol, 1.0);
}