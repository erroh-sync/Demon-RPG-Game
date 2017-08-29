if(okaytogo){
	imgframe += imgrate;
	
	if(imgframe >= 0){
		damagetimer -= 1;
		if(damagetimer <= 0 && !damagedealt){
			damagedealt = true;
		
			// Do damage here
			event_user(0);
		}
	
		if(!sfxplayed && drawfx){
			__sfx_play(sfxToPlay, 1.0);
			sfxplayed = true;
		}
	}
	
	if((imgframe >= sprite_get_number(fx_sprite)||!drawfx) && damagedealt)
		instance_destroy();
}