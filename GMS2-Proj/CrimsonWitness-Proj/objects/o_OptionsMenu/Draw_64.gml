event_inherited();

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