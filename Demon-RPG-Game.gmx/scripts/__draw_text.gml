///__draw_text(x,y,text,sprite,sep,spac)
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
    if(string_char_at(argument2, i ) == '#')
    {
        switch(string_char_at(string_lower(argument2), i + 1))
        {
            // Colour
            case 'c':
            {
                var colr = real(string_copy(argument2, i + 2, 3));
                var colg = real(string_copy(argument2, i + 5, 3));
                var colb = real(string_copy(argument2, i + 8, 3));
                col = make_colour_rgb(colr, colg,colb);
                
                i += 10;
                break;
            }
            // Alpha
            case 'a':
            {
                alph = real(string_copy(argument2, i + 2, 3)) / 255;
                
                i += 4;
                break;
            }
            // NewLine
            case '/':
            {
                yOff += 1;
                xOff = -1;
                
                i += 1;
                break;
            }
            // Wave
            case 'w':
            {
                wave = real(string_copy(argument2, i + 2, 3))/10;
                
                i += 4;
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
                        argument0 + ((xOff * argument4) * sprite_get_width(argument3)) + (sin((global.Time + xOff)/8) * wave),
                        argument1 + ((yOff * argument5 ) * sprite_get_height(argument3)) + (cos((global.Time + xOff)/8) * wave),
                        1.0, 1.0, 0, col, alph);
}
