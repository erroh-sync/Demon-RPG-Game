// Reset out playHover sound
playhover = false;

// Animate if we have focus
if(hasfocus)
	focusanim = lerp(focusanim, 1.0, animspeed);
else
	focusanim = lerp(focusanim, 0.0, animspeed);

// Reset the Fast Scroll Timer if we release any of the directional buttons
if(global.input_h_up != 0 || global.input_v_up != 0 || hasfocus == false)
{
    fasttimer = fasttimer_start;
}

// Check if the window has focus
if(hasfocus && focustimer == 0){
	// Decrement the Fast Scroll Timer if we're holding either of the directional buttons
	if((global.input_h != 0 || global.input_v != 0) && fasttimer > 0)
	{
	    fasttimer -= 1;
	}

	// Movement
	if(global.input_v_down != 0 || (global.input_v != 0 && fasttimer == 0))
	{
	    selecteditem_y -= global.input_v;
    
	    if(selecteditem_y >= ymax)
	        selecteditem_y = 0;
	    else if(selecteditem_y < 0)
	        selecteditem_y = ymax-1;
    
	    if(fasttimer == 0)
	        fasttimer = fasttimer_interval;
			
		playhover = true;
	}
	else if(global.input_h_down != 0 || (global.input_h != 0 && fasttimer == 0))
	{   
	    selecteditem_x -= global.input_h;
    
	    if(selecteditem_x >= xmax)
	        selecteditem_x = 0;
	    else if(selecteditem_x < 0)
	        selecteditem_x = xmax-1;
    
	    if(fasttimer == 0)
	        fasttimer = fasttimer_interval;
			
		playhover = true;
	}
}else{
	if(!hasfocus)
		focustimer = 5;
	else
		focustimer -= 1;
}