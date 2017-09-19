event_inherited();

// Animate on Focus
if(hasfocus)
	focusanim = lerp(focusanim, 1, 0.2);
else
	focusanim = lerp(focusanim, 0, 0.2);

// Item Animation 
for(var i = 0; i < array_length_2d(menuitems,0); i++){
	if(i == selecteditem_x && hasfocus)
		itemanim[i] = lerp(itemanim[i], 0, 0.2);
	else
		itemanim[i] = lerp(itemanim[i], 1, 0.15);
}

// Functionality
__combat_menu();