event_inherited();

if(!finished){
	// Animation
	anim = lerp(anim, 1.1, 0.1);
	
	// Inactivity Timer
	if(inactivitytimer == 0)
		finished = true;
	else if(inactivitytimer > 0)
		inactivitytimer -= 1;
}else{
	// Animation
	anim = lerp(anim, -0.1, 0.25);
	
	// Return to our regularly scheduled programming
	//if(anim < 1)
}