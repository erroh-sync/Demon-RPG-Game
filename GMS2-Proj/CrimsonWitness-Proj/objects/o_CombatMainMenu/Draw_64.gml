// FocusOffset
var fa = focusanim * 128;

// Infobar
/*
shader_set(__combatmenu_fade_shader);
draw_surface(infobar_surf,0,720 - sprite_get_height(s_Infobar) * 1.5);
shader_reset();*/

for(var i = 0; i < array_length_2d(menuitems, 0); i++)
{
	// Button
	draw_sprite(s_RootActionButton, 0, 838 + (126 * i), 720 + (itemanim[i] * 32) + fa);
	
	// Text
	var soff = (string_length(__interpret_loc(menuitems[i], e_LocType.elt_guiloc)))/2 * ((sprite_get_width(s_SmlKomikaFont)) * (global.loctextwidth[global.currentlang] + 0.5));
	
	var pre = "#w" + string_format(30 * (1 - itemanim[i]), 3, 0);
	__draw_text( 838 + (126 * i) - soff, 720 - 44 + (itemanim[i] * 64) + fa, pre + __interpret_loc(menuitems[i], e_LocType.elt_guiloc), s_SmlKomikaFont, 0.5, 0);

	// Icon
	var iconrotation = sin(current_time/192) *  15;
	draw_sprite_ext(s_RootActionIcons, i,
					838 + (126 * i),
					720 - 32 - ((1 - itemanim[i]) * 56) + fa,
					(0.5 + ((1 - itemanim[i])/2)),
					(0.5 + ((1 - itemanim[i])/2)),
					(1 - itemanim[i]) * iconrotation,
					c_white, 1.0);
}