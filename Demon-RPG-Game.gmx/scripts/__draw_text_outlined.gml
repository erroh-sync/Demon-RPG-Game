///__draw_text_outlined(x, y, txt, c1, c2);

draw_set_color(argument4);
for(var i = -1; i <= 1; i++)
{
    for(var j = -1; j <= 1; j++)
    {
        draw_text(argument0 + i, argument1 + j, argument2);
    }
}
draw_set_color(argument3);
draw_text(argument0, argument1, argument2);

draw_set_color(c_white);
