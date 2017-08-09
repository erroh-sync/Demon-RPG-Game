event_inherited();

	
	/*
	// Text
	var prestring = "#a" + string_format(255 * focusfade, 3, 0)
				  + "#c" + string_format(color_get_red(global.menucol), 3, 0) + string_format(color_get_green(global.menucol), 3, 0) + string_format(color_get_blue(global.menucol), 3, 0)
				  + "#w" + string_format(itemwave[i], 3, 0);
	__draw_text( 64 - focusoffset + itemanim[i] * 32, ypos, prestring + menuitems[i,0], s_MilleniumFontInlined, 0.35, 0 );*/

var f = 0;
var ypos = room_height/2 + 64;
// Fullscreen
f = window_get_fullscreen();
draw_sprite_ext(s_MenuCheck,f,340 - focusoffset, ypos + 32, 1.0,1.0,0,global.menucol,focusfade);

// Music
for(var i = 0; i < 11; i++){
	f = global.musvolume > i;
	draw_sprite_ext(s_MenuCheck,f,340 - focusoffset + (48 * i), ypos + 30 + 48, 1.0,1.0,0,global.menucol,focusfade);
}

// SFX
for(var i = 0; i < 11; i++){
	f = global.sfxvolume > i;
	draw_sprite_ext(s_MenuCheck,f,340 - focusoffset + (48 * i), ypos + 30 + 96, 1.0,1.0,0,global.menucol,focusfade);
}