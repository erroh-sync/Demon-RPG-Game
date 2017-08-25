// Draw the room Background
draw_set_color(bgCol);
draw_rectangle(0,0,room_width,room_height,false);
draw_set_color(c_white);

draw_set_color(global.menucol);
var ps = "#c" + string_format(color_get_red(global.menucol2), 3, 0) + string_format(color_get_green(global.menucol2), 3, 0) + string_format(color_get_blue(global.menucol2), 3, 0)
			+ "#w020";
__draw_text_uni(370,309 + sin(current_time * o_TitleDraw.bobspeed) * o_TitleDraw.bobamount,ps + string(__interpret_loc(0, e_LocType.elt_guiloc)),1.5,1 - global.loctextwidth[global.currentlang],1);
draw_set_color(c_white);

event_inherited();