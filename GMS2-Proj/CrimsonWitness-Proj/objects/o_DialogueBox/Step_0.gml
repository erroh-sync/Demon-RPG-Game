if(bufferstring == "NULL")
	bufferstring = __interpret_loc(script[scriptpos, 0], e_LocType.elt_dialoc);

if((hidden||closing)){
	anim = lerp(anim, -0.2, 0.2);
	if(closing && anim <= 0)
		instance_destroy();
}
else if((!hidden && !closing))
	anim = lerp(anim, 2.2, 0.2);

if(waittimer <= 0 && !closing){
	if(linef < string_length(bufferstring))
	{
		if(activedelay > 0)
			activedelay --;
		else{
			if((!hidden && !closing) && anim >= 2){
				var t_linef = floor(linef);
				linef += textspeed;
				if(floor(linef) > t_linef)
					__sfx_play(scrollsfx, 1.0);
			}
		
			//AUTOADVANCEMENT DUE TO TEXT FUNCTIONS
			if(string_char_at(bufferstring, floor(linef)) == "#")
			{
				switch(string_char_at(string_lower(bufferstring), floor(linef) + 1))
				{
				    case "c":	linef += 11;
				        break;
				    case "/":   linef += 1;
				        break;
					case "d":	activedelay = real(string_copy(bufferstring, floor(linef) + 2, 3));
								linef += 5;
						break;
					case "p":	textspeed = clamp(real(string_copy(bufferstring, floor(linef) + 2, 3))/100,0,1);
								linef += 5;
						break;
					case "q":	bufferstring = string_insert(global.p_name, bufferstring, floor(linef + 2));
								show_debug_message(global.p_name);
								linef += 1;
						break;
				    default:	linef += 5;
				        break;
				}
			}
		}
		if(global.input_select_down < 0)
			linef = string_length(bufferstring);
		blitstring = string_copy(bufferstring, 0, linef);
	}else if(global.input_select_down > 0 || waittimer == 0){
		linef = 0;
		blitstring = "";
		bufferstring = "NULL";
		activedelay = 0;
		scriptpos += 1;
		if(scriptpos >= array_height_2d(script)){
			closing = true
			scriptpos = 0;
		}else{
			// Do Scripts
			__event_script_interpret(script[scriptpos, 2]);
		}
		
		__sfx_play(nextsfx, 1.0);
	}		
}

waittimer -= 1;