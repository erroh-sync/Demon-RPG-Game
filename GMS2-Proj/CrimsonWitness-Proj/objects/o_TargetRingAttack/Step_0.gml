event_inherited();
	
if(!finished){
	// Color
	if(ringtimer > 50)
		global.menucol = merge_color(global.menucol, c_close,0.05);
	else if(ringtimer > thresh_late)
		global.menucol = merge_color(global.menucol, c_perf,0.2);
	else
		global.menucol = merge_color(global.menucol, c_miss,0.25);

	// Input
	if(global.input_rtrig_down > 0){
		__sfx_play(a_FrLgCharge,1.0);
		inactivitytimer = -255
	}
	
	// Hold Input
	if(inactivitytimer == -255)
	{
		if(global.input_rtrig > 0){		
			// Smooth out the speed of the handle
			ringshrinkrate = lerp(ringshrinkrate, 4.0, 0.01);			
			ringtimer = clamp(ringtimer - ringshrinkrate,0,100);
			
			// Animate the handle
			handlescl = lerp(handlescl, 0.4, 0.01);
			handlejit = lerp(handlejit, 5, 0.01);
			
			// Automatically fail the attack if they're too late
			if(ringtimer <= 0){
				handlejit = 0.0;
				finished = true;				
			}
		}
		else{
			handlejit = 0.0;
			handlescl = 2.5;
			finished = true;
		}
	}
}else{			
	// If the multiplier hasn't been sorted yet, do that
	if(multiplier == -1)
	{
		var t = instance_create_layer( ss_xloc, ss_yloc, "gui_layer", o_AccuracyText);
		
		if(ringtimer < thresh_late){multiplier = 0.0; t.sprite_index = s_TooLate;}
		else if(ringtimer < thresh_perf){multiplier = 1.0; t.sprite_index = s_Perfect; global.menucol = c_white;}
		else if(ringtimer < thresh_close){multiplier = 0.8; t.sprite_index = s_SoClose;}
		else if(ringtimer < thresh_good){multiplier = 0.6; t.sprite_index = s_NotBad;}
		else {multiplier = 0.0; t.sprite_index = s_TooEarly;}
		
		// Spawn Stars
		if(multiplier > 0)
			repeat(random_range(3,6)){instance_create_layer( ss_xloc + handleoffset, 564, "gui_layer", o_SmlStarParticle);};
		if(multiplier >= 0.8)
			repeat(random_range(1,3)){instance_create_layer( ss_xloc + handleoffset, 564, "gui_layer", o_StarParticle);};
		if(multiplier >= 1.0)
			instance_create_layer( ss_xloc + handleoffset, 564, "gui_layer", o_LrgStarParticle);
			
		// Set anim variable to let animations play out
		anim = 60;
		
		// Stop the "Charging" Sound and play the ding
		__sfx_stop(a_FrLgCharge);
		if(multiplier > 0)
			__sfx_play(a_FrLgDing,1.0);
		else
			__sfx_play(a_FrLgCancel,1.0);
	}
	
	// Color
	if(multiplier == 0)
		global.menucol = merge_color(global.menucol, c_miss,0.5);
	else if(multiplier == 1)
		global.menucol = merge_color(global.menucol, c_perf,0.5);
	else if(ringtimer > thresh_late)
		global.menucol = merge_color(global.menucol, c_close,0.5);
	
	// Slow the handle down but slide it to the end
	ringshrinkrate = lerp(ringshrinkrate, 0.0, 0.1);			
	ringtimer = clamp(ringtimer - ringshrinkrate,0,100);
	
	// Animate the handle
	handlescl = lerp(handlescl, 1.0, 0.2);
	
	// Fade out the glow
	glowalph = lerp(glowalph, 0.0, 0.1);
	
	// Popanim
	popanim = lerp(popanim, 1, 0.025);
}

// Set the Handle position 
handleoffset = lerp(-126,126,1 - (ringtimer/100));