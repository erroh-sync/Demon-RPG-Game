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
    
	    if(selecteditem_y >= array_height_2d(menuitems))
	        selecteditem_y = 0;
	    else if(selecteditem_y < 0)
	        selecteditem_y = array_height_2d(menuitems)-1;
			
		//if(array_length_2d(menuitems, selecteditem_y)-1 < selecteditem_x)
			//selecteditem_x = array_length_2d(menuitems, selecteditem_y)-1;
    
	    if(fasttimer == 0)
	        fasttimer = fasttimer_interval;
	}
	else if(global.input_h_down != 0 || (global.input_h != 0 && fasttimer == 0))
	{   
	    selecteditem_x -= global.input_h;
    
	    if(selecteditem_x >= array_length_2d(menuitems, selecteditem_y))
	        selecteditem_x = 0;
	    else if(selecteditem_x < 0)
	        selecteditem_x = array_length_2d(menuitems, selecteditem_y)-1;
    
	    if(fasttimer == 0)
	        fasttimer = fasttimer_interval;
	}
}else{
	if(!hasfocus)
		focustimer = 5;
	else
		focustimer -= 1;
}