if((hidden||closing)){
	anim = lerp(anim, -0.2, 0.2);
	if(closing && anim <= 0)
		instance_destroy();
}
else if((!hidden && !closing))
	anim = lerp(anim, 2.2, 0.2);

if(waittimer <= 0 && !closing){
	if(linef < string_length(script[scriptpos, 0]))
	{
		if(activedelay > 0)
			activedelay --;
		else{
			if((!hidden && !closing) && anim >= 2)
				linef += textspeed;
		
			//AUTOADVANCEMENT DUE TO TEXT FUNCTIONS
			if(string_char_at(script[scriptpos, 0], floor(linef)) == "#")
			{
				switch(string_char_at(string_lower(script[scriptpos, 0]), floor(linef) + 1))
				{
				    case "c":	linef += 11;
				        break;
				    case "/":   linef += 1;
				        break;
					case "d":	activedelay = real(string_copy(script[scriptpos, 0], floor(linef) + 2, 3));
								linef += 5;
						break;
					case "p":	textspeed = clamp(real(string_copy(script[scriptpos, 0], floor(linef) + 2, 3))/100,0,1);
								linef += 5;
						break;
					case "q":	script[scriptpos, 0] = string_insert(global.p_name, script[scriptpos, 0], floor(linef + 2));
								show_debug_message(global.p_name);
								linef += 1;
						break;
				    default:	linef += 5;
				        break;
				}
			}
		}
		if(global.input_select_down < 0)
			linef = string_length(script[scriptpos, 0]);
		blitstring = string_copy(script[scriptpos, 0], 0, linef);
	}else if(global.input_select_down > 0 || waittimer == 0){
		linef = 0;
		blitstring = "";
		activedelay = 0;
		scriptpos += 1;
		if(scriptpos >= array_height_2d(script)){
			closing = true
			scriptpos = 0;
		}else{
			// Do Scripts
			__event_script_interpret(script[scriptpos, 2]);
		}
	}		
}

waittimer -= 1;

image_xscale = clamp(anim,0,1);
image_yscale = clamp(anim-1,0.1,1);