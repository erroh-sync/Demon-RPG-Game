infotext[5] = infotext[selecteditem_y];

if(hasfocus && focustimer == 0){
	if(global.input_select_down < 0){
		selecteditem_y = 5;
		hasfocus = false;
		__sfx_play( a_SMTQuitMenu, 1.0)
		instance_create_layer(0,0,layer,oTitleScreen);
	}else if(global.input_select_down > 0){
		hasfocus = false;
		if(selecteditem_y == 3)
			__sfx_play( a_SMTBack, 1.0);
		else
			__sfx_play( a_SMTSelect, 1.0);
	}
}

if(focusanim < 0.1 && hasfocus = false)
{
	switch(selecteditem_y){
		case 1:
			room_goto(rOverworldTest);
		case 2:
			instance_create_layer(0,0,layer,oConfigMenu);
		case 5:
			break;
		default:
			game_end();
			break;
	}
	instance_destroy();
}

if(playhover)
{
	__sfx_play( a_SMTHover, 1.0);
}