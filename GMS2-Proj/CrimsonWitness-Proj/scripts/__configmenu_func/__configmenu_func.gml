infotext[8] = infotext[selecteditem_y];

if(hasfocus && focustimer == 0){
	if(global.input_select_down < 0){
		selecteditem_y = 8;
		hasfocus = false;
		__sfx_play( a_SMTBack, 1.0)
	}else if(global.input_select_down > 0){
		__sfx_play( a_SMTSelect, 1.0)
	}
}

if(focusanim < 0.1 && hasfocus = false)
{
	instance_create_layer(0,0,layer,oMainMenu);
	instance_destroy();
}

if(playhover)
{
	__sfx_play( a_SMTHover, 1.0);
}