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
                if(string_char_at(argument0, i + 3) == "t")
                    global.gameflags[real(string_copy(argument0, i, 3))] = true;
                else if(string_char_at(argument0, i + 3) == "f")
                    global.gameflags[real(string_copy(argument0, i, 3))] = false;
                break;
            }
			// Local Flag
			case "_locflag":
            {
                if(string_char_at(argument0, i + 3) == "t")
                    global.localflags[real(string_copy(argument0, i, 3))] = true;
                else if(string_char_at(argument0, i + 3) == "f")
                    global.localflags[real(string_copy(argument0, i, 3))] = false;
                break;
            }
			// Initiate combat
            case "__combat":
                /*TODO: Add combat*/ break;
			// Open Dialogue Box
			case "_diaopen":
                with(o_DialogueBox){animstate = 1} break;
			// Close Dialogue Box
            case "diaclose":
                with(o_DialogueBox){animstate = 2} break;
			// Go to a new room
            case "roomgoto":
                room_goto(real(string_copy(argument0, i, 3)));/*TODO: Add transitions*/ break;
        }
    }    
}