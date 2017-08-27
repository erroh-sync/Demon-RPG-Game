event_inherited();
	
if(!finished){
	// Color
	if(ringtimer > 50)
		global.menucol = merge_color(global.menucol, c_white,0.05);
	else if(ringtimer > thresh_late)
		global.menucol = merge_color(global.menucol, c_yellow,0.2);
	else
		global.menucol = merge_color(global.menucol, c_red,0.25);

	// Input
	if(global.input_select_down > 0)
		inactivitytimer = -255
	
	// Hold Input
	if(inactivitytimer == -255)
	{
		if(global.input_select > 0){		
			// Smooth out the speed of the handle
			ringshrinkrate = lerp(ringshrinkrate, 4.0, 0.01);
			
			ringtimer = clamp(ringtimer - ringshrinkrate,0,100);
			
			// Automatically fail the attack if they're too late
			if(ringtimer <= thresh_late)
			{
				finished = true;
				multiplier = 0;
			}
		}
		else
			finished = true;
	}
}else{			
	// If the multiplier hasn't been sorted yet, do that
	if(multiplier == -1)
	{
		if(ringtimer < thresh_perf){multiplier = 1.0}
		else if(ringtimer < thresh_close){multiplier = 0.8}
		else if(ringtimer < thresh_good){multiplier = 0.6}
		else {multiplier = 0.0}
	}
	
	// Slow the handle down but slide it to the end
	ringshrinkrate = lerp(ringshrinkrate, 0.0, 0.025);			
	ringtimer = clamp(ringtimer - ringshrinkrate,0,100);
	
	// Popanim
	popanim = lerp(popanim, 1, 0.05);
}