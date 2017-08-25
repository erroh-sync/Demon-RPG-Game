for(var i = 0; i < array_length_2d(menuitems, 0); i++)
{
	draw_sprite(s_RootActionButton, 0, 838 + (126 * i), 720);
	
	__draw_text_uni(832 + (126 * i), 720 - 64, __interpret_loc(menuitems[0,i], e_LocType.elt_guiloc),1.5, 0.65, 0);
}