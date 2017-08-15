if(!global.gameflags[9]){
	instance_create_layer(0,0,"gui_layer",o_DialogueBox);

	with(o_DialogueBox){
		hidden = true;
		waittimer = 150;
	
		script[0,0] = "";
		script[0,1] = "";
		script[0,2] = "";

		script[1,0] = "...?";
		script[1,1] = global.p_name;
		script[1,2] = "$_setflag: 0009t $togghide__";
	}
}