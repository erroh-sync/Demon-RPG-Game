event_inherited();

__combat_skills_menu();

// Animation
if(gleamframe < 5 && hasfocus)
	gleamframe += framerate;
else if(!hasfocus){
	gleamframe = 0;
}
	
if(storedy != selecteditem_y){
	storedy = selecteditem_y;
	gleamframe = 0;
}