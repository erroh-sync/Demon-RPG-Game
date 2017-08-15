// Fog Surface
if(surface_exists(fog_surf)){
	surface_set_target(fog_surf);
	draw_clear_alpha(c_black,0.0);
	for(var i = 0; i < room_width/sprite_get_width(s_MenuFog) + 2; i++)
	{
		var xOff = (current_time * 0.01) % sprite_get_width(s_MenuFog);
		var yScl = sin((current_time * 0.001)) * 0.1;
		draw_sprite_ext(s_MenuFog, 0, i * sprite_get_width(s_MenuFog) - xOff, (sprite_get_height(s_MenuFog)*1.5)/2, 1.0, 1.0 - yScl, 0.0, c_white, 0.75);
		draw_sprite_ext(s_MenuFog, 0, (i-1) * sprite_get_width(s_MenuFog) + xOff, (sprite_get_height(s_MenuFog)*1.5)/2, 1.0, 1.0 + yScl, 0.0, c_white, 0.75);
	}
	surface_reset_target();
}else
	fog_surf = surface_create(room_width, sprite_get_height(s_MenuFog) * 1.5);

for(var i = 0; i < array_height_2d(menuitems); i++)
{
	var ypos = room_height/2 + 64 + (i * 48);

	// Fog
	shader_set(__mainmenu_fog_shader);
	var shader_params = shader_get_uniform(__mainmenu_fog_shader, "f_Time");
	shader_set_uniform_f(__mainmenu_fog_shader, current_time * 0.01);
	draw_surface_ext(fog_surf,0,ypos - 24,1,1,0,global.menucol2,itemanim[i] * 0.25);
	shader_reset();
	
	// Arrow
	if(i == selecteditem_y && hasfocus)
		draw_sprite_ext(s_MenuArrow,0, 32 - focusoffset + itemanim[i] * 32, ypos,1.0,1.0,0,global.menucol,itemanim[i] * 3);
	
	// Text
	var prestring = "#a" + string_format(255 * focusfade, 3, 0)
					+ "#c" + string_format(color_get_red(global.menucol), 3, 0) + string_format(color_get_green(global.menucol), 3, 0) + string_format(color_get_blue(global.menucol), 3, 0)
					+ "#w" + string_format(itemwave[i], 3, 0);
	__draw_text( 64 - focusoffset + itemanim[i] * 32, ypos, prestring + menuitems[i,0], s_MilleniumFontInlined, 0.35, 0 );
}