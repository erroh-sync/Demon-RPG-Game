if(array_length_2d(menuitems, 0) > 1)
{
	if(global.input_h_down != 0){
		selecteditem_y = 0;
		topdisp = 0;
		event_user(0);
	}
}

event_inherited();

while(selecteditem_y > (topdisp + maxdisp))
{
	topdisp += 1;
}

if(selecteditem_y < topdisp){
	topdisp = selecteditem_y;
	event_user(0);
}