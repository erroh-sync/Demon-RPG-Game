///__draw_text_centered(x,y,text,sprite,sep,spac);

var off = (string_length(argument2) + 1.5) * (sprite_get_width(argument3) * argument4);

__draw_text(argument0 - (off/2),argument1,argument2,argument3,argument4,argument5);