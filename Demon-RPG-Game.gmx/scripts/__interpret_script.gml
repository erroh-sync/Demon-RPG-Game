///__interpret_script(scriptstring);

var i = 0;

for(i = 1; i < string_length(argument0) + 1; i += 1)
{
    if(string_char_at(argument0, i ) == '$')
    {
        i += 1;
        // Get the Type
        var type = string_copy(argument0, i, 8);
        i += 10;
        switch(type)
        {
            case "_setflag":
            {
                if(string_char_at(argument0, i + 3) == "t")
                    Obj_PlayerData.GameFlags[real(string_copy(argument0, i, 3))] = true;
                else if(string_char_at(argument0, i + 3) == "f")
                    Obj_PlayerData.GameFlags[real(string_copy(argument0, i, 3))] = false;
                break;
            }
            case "__combat":
                __initiate_combat(real(string_copy(argument0, i, 3))); break;
            case "diaclose":
                with(Obj_DialogueUI){instance_destroy();} break;
        }
    }    
}

//$_setflag: 001t
