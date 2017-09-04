///@description __draw_text(x,y,text,sprite,sep,spac);
///@param x
///@param y
///@param text
///@param sprite
///@param sep
///@param spac

var i;
var f;
var col = c_white;
var wave = 0;
var shake = 0;
var alph = 1.0;
var xOff = -1;
var yOff = 0;
for(i = 1; i < string_length(argument2) + 1; i += 1)
{
    f = -1;
    if(string_char_at(argument2, i ) == "#")
    {
        switch(string_char_at(string_lower(argument2), i + 1))
        {
            // Colour
            case "c":
            {
                var colr = real(string_copy(argument2, i + 2, 3));
                var colg = real(string_copy(argument2, i + 5, 3));
                var colb = real(string_copy(argument2, i + 8, 3));
                col = make_colour_rgb(colr, colg,colb);
                
                i += 10;
                break;
            }
            // Alpha
            case "a":
            {
                alph = real(string_copy(argument2, i + 2, 3)) / 255;
                
                i += 4;
                break;
            }
            // NewLine
            case "/":
            {
                yOff += 1;
                xOff = -1;
                
                i += 1;
                break;
            }
            // Wave
            case "w":
            {
                wave = real(string_copy(argument2, i + 2, 3))/10;
                
                i += 4;
                break;
            }
			// Shake
            case "s":
            {
                shake = real(string_copy(argument2, i + 2, 3))/10;
                
                i += 4;
                break;
            }
			// Delay
            case "d":
            {
                // Just here for draw blocking.
                
                i += 4;
                break;
            }
			// Pacing
            case "p":
            {
                // Just here for draw blocking.
                
                i += 4;
                break;
            }
			// Player Name. Idk why it's a q
			case "q":
			{
				// Just here for draw blocking.
                
                i += 1;
                break;
			}
            default:
            {
                break;
            } 
        }
    }
    else
    {
        f = ord(string_char_at(argument2, i ));
        xOff += 1;
    }
    
    if(f >= 0)
        draw_sprite_ext(argument3, f, 
                        argument0 + ((xOff * argument4) * sprite_get_width(argument3)) + (sin((current_time/128) + xOff/2) * wave) + irandom_range(-shake, shake),
                        argument1 + ((yOff * argument5 ) * sprite_get_height(argument3)) + (cos((current_time/128) + xOff/2) * wave) + irandom_range(-shake, shake),
                        1.0, 1.0, 0, col, alph);
}