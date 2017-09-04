draw_set_color(c_white);
draw_set_alpha(1);

image_xscale = clamp(anim,0,1);
image_yscale = clamp(anim-1,0.1,1);
draw_self();

if(!closing && !hidden && anim > 2){
	__draw_text(x - sprite_width/2 + 32, y - sprite_height/2 + 16, blitstring, fontsprite, 0.6, 0.8);
	
	if(script[scriptpos, 1] != ""){
		// Name Display
		draw_sprite(s_NameBox, 0, x - sprite_width/2, y - sprite_height/2);

		__draw_text(x - sprite_width/2 + 16, y - sprite_height/2 - 60, script[scriptpos, 1], fontsprite, 0.5, 1.0);
	}
}