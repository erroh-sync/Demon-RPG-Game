if(hasfocus && focustimer == 0){
	if(global.input_select_down != 0){
		hasfocus = false;
		__sfx_play( a_SMTPressStart, 1.0);
	}
}

if(focusanim < 0.05 && hasfocus = false)
{
	instance_create_layer(0,0,layer,oMainMenu);
	instance_destroy();
}