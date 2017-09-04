///__event_script_interpret(string);
for(var i = 1; i < string_length(argument0) + 1; i += 1)
{
    if(string_char_at(argument0, i ) == "$")
    {
        i += 1;
        // Get the Type
        var type = string_copy(argument0, i, 8);
        i += 10;
        switch(type)
        {
			// Flag Setting
            case "_setflag":
            {
                if(string_char_at(argument0, i + 4) == "t")
                    global.gameflags[real(string_copy(argument0, i, 4))] = true;
                else if(string_char_at(argument0, i + 4) == "f")
                    global.gameflags[real(string_copy(argument0, i, 4))] = false;
                break;
            }
			// Initiate combat
            case "__combat":
                /*TODO: Add combat*/ break;
			// Close Dialogue Box
            case "diaclose":
                with(o_DialogueBox){closing = true;} break;
						// Close Dialogue Box
            case "togghide":
                with(o_DialogueBox){hidden = !hidden;} break;
			// Go to a new room
            case "roomgoto": //$roomgoto: roomnum(0000),x(0000),y(0000),rot(000)
				global.p_saved_x = real(string_copy(argument0, i + 5,  9));
				global.p_saved_y = real(string_copy(argument0, i + 10,  14));
				global.p_saved_r = real(string_copy(argument0, i + 15,  18));
                room_goto(real(string_copy(argument0, i,  4)));/*TODO: Add transitions*/ 
				break;
			// Wait a certain number of frames
            case "____wait":
				o_DialogueBox.waittimer = real(string_copy(argument0, i,  3)); break;
			case "uicreate":
				instance_create_layer(0,0,"gui_layer",real(string_copy(argument0, i,  4))); break;
			// Gives the player an item or skill
			case "___grant": 
			{
				show_debug_message(string_copy(argument0, i,  5));
				var index = real(string_copy(argument0, i + 1,  4));
				switch(string_char_at(argument0, i)){
					case "i": // Item
						__grant_item(index);
						break;
					case "k": // Key Item
						__grant_keyitem(index);
						break;
					case "r": // Ring
						__grant_ring(index);
						break;
					case "s": // Skill
						__grant_skill(index);
						break;
				}
				break;
			}
        }
    }    
}