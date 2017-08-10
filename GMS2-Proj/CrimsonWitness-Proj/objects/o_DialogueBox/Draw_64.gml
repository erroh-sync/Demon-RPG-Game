draw_self();

__draw_text(20, 20, "waittimer = " + string(waittimer), s_MilleniumFont, 0.35, 0.8);
__draw_text(20, 40, "scriptpos = " + string(scriptpos), s_MilleniumFont, 0.35, 0.8);

if(!closing && !hidden)
	__draw_text(x - sprite_width/2 + 32, y - sprite_height/2 + 16, blitstring, s_MilleniumFont, 0.35, 0.8);
