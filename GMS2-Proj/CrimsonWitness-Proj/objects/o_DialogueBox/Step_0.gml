if(animstate == 2){
	anim = lerp(anim, -0.5, 0.3);
	if(anim < 0)
		instance_destroy();
}
else if(animstate == 1)
{
	if(anim < 2){
		anim = lerp(anim, 2.2, 0.2);
	}else{
		if(linef < string_length(script[scriptpos, 0]))
		{
			if(activedelay > 0)
				activedelay --;
			else{
			linef += textspeed;
		
				//AUTOADVANCEMENT DUE TO TEXT FUNCTIONS
				if(string_char_at(script[scriptpos, 0], floor(linef)) == "#")
				{
				    switch(string_char_at(string_lower(script[scriptpos, 0]), floor(linef) + 1))
				    {
				        case "c":	linef += 11;
				            break;
				        case "/":   linef += 2;
				            break;
						case "d":	activedelay = real(string_copy(script[scriptpos, 0], floor(linef) + 2, 3));
									linef += 4;
							break;
						case "p":	textspeed = clamp(real(string_copy(script[scriptpos, 0], floor(linef) + 2, 3))/100,0,1);
									linef += 4;
							break;
				        default:	linef += 4;
				            break;
				    }
				}
			}
			if(global.input_select_down < 0)
				linef = string_length(script[scriptpos, 0]);
			blitstring = string_copy(script[scriptpos, 0], 0, linef);
		}else if(global.input_select_down > 0){
			linef = 0;
			activedelay = 0;
			scriptpos += 1;
			if(scriptpos >= array_height_2d(script)){
				animstate = 2;
				scriptpos = 0;
			}
		}		
	}
}

image_xscale = clamp(anim,0,1);
image_yscale = clamp(anim-1,0.1,1);