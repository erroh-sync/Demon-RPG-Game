// Run Inherited Code
event_inherited();

// Wave Animations
if(array_height_2d(menuitems) != array_length_1d(itemwave)){
	for(var i = 0; i < array_height_2d(menuitems); i++){itemwave[i] = 0;}
}
for(var i = 0; i < array_height_2d(menuitems); i++){
	if(i == selecteditem_y && hasfocus)
		itemwave[i] = lerp(itemwave[i],  25, 0.05);
	else
		itemwave[i] = lerp(itemwave[i], 0, 0.25);
}

// Indent/Fog Animations
if(array_height_2d(menuitems) != array_length_1d(itemanim)){
	for(var i = 0; i < array_height_2d(menuitems); i++){itemanim[i] = 0;}
}
for(var i = 0; i < array_height_2d(menuitems); i++){
	if(i == selecteditem_y && hasfocus)
		itemanim[i] = lerp(itemanim[i], 1, 0.075);
	else
		itemanim[i] = lerp(itemanim[i], 0, 0.05);
}

// Animation for when Options Menu is open
if(!instance_exists(o_MainMenuFade)){
	if(!hasfocus)
	{
		focusfade = lerp(focusfade, focusfade_max, 0.2);
		focusoffset = lerp(focusoffset, focusoffset_max, 0.25);
		held_y_position = -1;
	}else{
		focusfade = lerp(focusfade, 1, 0.1);
		focusoffset = lerp(focusoffset, 0, 0.25);
		if(held_y_position != selecteditem_y)
		{
			held_y_position = selecteditem_y;
			itemwave[selecteditem_y] = 200;
		}
	}
}