// Animation
if(h_anims == true){
	if(array_length_2d(menuitems,0) != array_length_1d(itemanim)){
		for(var i = 0; i < array_length_2d(menuitems,0); i++){itemanim[i] = 0;}
	}
	for(var i = 0; i < array_length_2d(menuitems,0); i++){
		if(i == selecteditem_x && hasfocus)
			itemanim[i] = lerp(itemanim[i], 0, 0.5);
		else
			itemanim[i] = lerp(itemanim[i], 1, 0.25);
	}
}else{
	if(array_height_2d(menuitems) != array_length_1d(itemanim)){
		for(var i = 0; i < array_height_2d(menuitems); i++){itemanim[i] = 0;}
	}
	for(var i = 0; i < array_height_2d(menuitems); i++){
		if(i == selecteditem_y && hasfocus)
			itemanim[i] = lerp(itemanim[i], 1, 0.5);
		else
			itemanim[i] = lerp(itemanim[i], 0, 0.25);
	}
}

if(hasfocus)
	focusanim = lerp(focusanim, 0, 0.5);
else
	focusanim = lerp(focusanim, 1, 0.25);