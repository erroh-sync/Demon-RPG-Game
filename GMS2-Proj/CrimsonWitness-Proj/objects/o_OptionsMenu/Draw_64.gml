event_inherited();

var f = 0;
var ypos = room_height/2 + 64;
// Fullscreen
f = window_get_fullscreen();
draw_sprite_ext(s_MenuCheck,f,440 - focusoffset, ypos + 32, 1.0,1.0,0,global.menucol,focusfade);

// Music
for(var i = 0; i < 11; i++){
	f = global.musvolume > i;
	draw_sprite_ext(s_MenuCheck,f,440 - focusoffset + (48 * i), ypos + 30 + 48, 1.0,1.0,0,global.menucol,focusfade);
}

// SFX
for(var i = 0; i < 11; i++){
	f = global.sfxvolume > i;
	draw_sprite_ext(s_MenuCheck,f,440 - focusoffset + (48 * i), ypos + 30 + 96, 1.0,1.0,0,global.menucol,focusfade);
}

// Text
var prestring = "#a" + string_format(255 * focusfade, 3, 0)
				+ "#c" + string_format(color_get_red(global.menucol2), 3, 0) + string_format(color_get_green(global.menucol2), 3, 0) + string_format(color_get_blue(global.menucol2), 3, 0);
__draw_text_uni(432 - focusoffset, ypos + 9 +  144, prestring + __interpret_loc(9),1.5, 0.85, 0 );