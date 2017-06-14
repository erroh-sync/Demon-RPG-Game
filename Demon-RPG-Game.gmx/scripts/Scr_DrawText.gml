///Scr_DrawText(TextString, x, y, Spacing, sprite);

var i;
var f;
var col = c_white;
var xOff = 0;
for(i = 1; i < string_length(argument0) + 1; i += 1)
{
    f = -1;
    switch(string_char_at(argument0, i))
    {
        /* SCRIPTING */
        case '#':
        {
            switch(string_char_at(string_lower(argument0), i + 1))
            {
                case 'c':
                {
                    var colr = real(string_copy(argument0, i + 2, 3));
                    var colg = real(string_copy(argument0, i + 5, 3));
                    var colb = real(string_copy(argument0, i + 8, 3));
                    col = make_colour_rgb(colr, colg,colb);
                    
                    i += 10;
                    break;
                }
            }
            break;
        }
        /* CAPITAL LETTERS */
        case 'A':
        {
            f = 0;
            xOff += 1;
            break;
        }
        case 'B':
        {
            f = 1;
            xOff += 1;
            break;
        }
        case 'C':
        {
            f = 2;
            xOff += 1;
            break;
        }
        case 'D':
        {
            f = 3;
            xOff += 1;
            break;
        }
        case 'E':
        {
            f = 4;
            xOff += 1;
            break;
        }
        case 'F':
        {
            f = 5;
            xOff += 1;
            break;
        }
        case 'G':
        {
            f = 6;
            xOff += 1;
            break;
        }
        case 'H':
        {
            f = 7;
            xOff += 1;
            break;
        }
        case 'I':
        {
            f = 8;
            xOff += 1;
            break;
        }
        case 'J':
        {
            f = 9;
            xOff += 1;
            break;
        }
        case 'K':
        {
            f = 10;
            xOff += 1;
            break;
        }
        case 'L':
        {
            f = 11;
            xOff += 1;
            break;
        }
        case 'M':
        {
            f = 12;
            xOff += 1;
            break;
        }
        case 'N':
        {
            f = 13;
            xOff += 1;
            break;
        }
        case 'O':
        {
            f = 14;
            xOff += 1;
            break;
        }
        case 'P':
        {
            f = 15;
            xOff += 1;
            break;
        }
        case 'Q':
        {
            f = 16;
            xOff += 1;
            break;
        }
        case 'R':
        {
            f = 17;
            xOff += 1;
            break;
        }
        case 'S':
        {
            f = 18;
            xOff += 1;
            break;
        }
        case 'T':
        {
            f = 19;
            xOff += 1;
            break;
        }
        case 'U':
        {
            f = 20;
            xOff += 1;
            break;
        }
        case 'V':
        {
            f = 21;
            xOff += 1;
            break;
        }
        case 'W':
        {
            f = 22;
            xOff += 1;
            break;
        }
        case 'X':
        {
            f = 23;
            xOff += 1;
            break;
        }
        case 'Y':
        {
            f = 24;
            xOff += 1;
            break;
        }
        case 'Z':
        {
            f = 25;
            xOff += 1;
            break;
        }
        /* LOWERCASE LETTERS */
        case 'a':
        {
            f = 26;
            xOff += 1;
            break;
        }
        case 'b':
        {
            f = 27;
            xOff += 1;
            break;
        }
        case 'c':
        {
            f = 28;
            xOff += 1;
            break;
        }
        case 'd':
        {
            f = 29;
            xOff += 1;
            break;
        }
        case 'e':
        {
            f = 30;
            xOff += 1;
            break;
        }
        case 'f':
        {
            f = 31;
            xOff += 1;
            break;
        }
        case 'g':
        {
            f = 32;
            xOff += 1;
            break;
        }
        case 'h':
        {
            f = 33;
            xOff += 1;
            break;
        }
        case 'i':
        {
            f = 34;
            xOff += 1;
            break;
        }
        case 'j':
        {
            f = 35;
            xOff += 1;
            break;
        }
        case 'k':
        {
            f = 36;
            xOff += 1;
            break;
        }
        case 'l':
        {
            f = 37;
            xOff += 1;
            break;
        }
        case 'm':
        {
            f = 38;
            xOff += 1;
            break;
        }
        case 'n':
        {
            f = 39;
            xOff += 1;
            break;
        }
        case 'o':
        {
            f = 40;
            xOff += 1;
            break;
        }
        case 'p':
        {
            f = 41;
            xOff += 1;
            break;
        }
        case 'q':
        {
            f = 42;
            xOff += 1;
            break;
        }
        case 'r':
        {
            f = 43;
            xOff += 1;
            break;
        }
        case 's':
        {
            f = 44;
            xOff += 1;
            break;
        }
        case 't':
        {
            f = 45;
            xOff += 1;
            break;
        }
        case 'u':
        {
            f = 46;
            xOff += 1;
            break;
        }
        case 'v':
        {
            f = 47;
            xOff += 1;
            break;
        }
        case 'w':
        {
            f = 48;
            xOff += 1;
            break;
        }
        case 'x':
        {
            f = 49;
            xOff += 1;
            break;
        }
        case 'y':
        {
            f = 50;
            xOff += 1;
            break;
        }
        case 'z':
        {
            f = 51;
            xOff += 1;
            break;
        }
        case '0':
        {
            f = 52;
            xOff += 1;
            break;
        }
        case '1':
        {
            f = 53;
            xOff += 1;
            break;
        }
        case '2':
        {
            f = 54;
            xOff += 1;
            break;
        }
        case '3':
        {
            f = 55;
            xOff += 1;
            break;
        }
        case '4':
        {
            f = 56;
            xOff += 1;
            break;
        }
        case '5':
        {
            f = 57;
            xOff += 1;
            break;
        }
        case '6':
        {
            f = 58;
            xOff += 1;
            break;
        }
        case ' 7':
        {
            f = 59;
            xOff += 1;
            break;
        }
        case '8':
        {
            f = 60;
            xOff += 1;
            break;
        }
        case '9':
        {
            f =  61;
            xOff += 1;
            break;
        }
        case '.':
        {
            f =  62;
            xOff += 1;
            break;
        }
        case ',':
        {
            f =  63;
            xOff += 1;
            break;
        }
        case '!':
        {
            f = 64;
            xOff += 1;
            break;
        }
        case '?':
        {
            f = 65;
            xOff += 1;
            break;
        }
        case '(':
        {
            f = 66;
            xOff += 1;
            break;
        }
        case ')':
        {
            f = 67;
            xOff += 1;
            break;
        }
        case ' ':
        {
            xOff += 1;
            break;
        }
    }
    
    if(f >= 0)
        draw_sprite_ext(argument4, f, argument1 + ((xOff * argument3) * sprite_get_width(argument4)), argument2, 1.0, 1.0, 0, col, 1.0);
}
