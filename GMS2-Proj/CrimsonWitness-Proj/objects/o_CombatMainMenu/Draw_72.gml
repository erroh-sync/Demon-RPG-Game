if(view_current == 0){
	if(surface_exists(infobar_surf)){
		surface_set_target(infobar_surf);
		draw_clear_alpha(c_black,0.0);
		for(var i = 0; i < room_width/sprite_get_width(s_Infobar) + 2; i++)
		{
			var xOff = (current_time * 0.02) % sprite_get_width(s_Infobar);
			draw_sprite_ext(s_Infobar, 0, i * sprite_get_width(s_Infobar) - xOff, (sprite_get_height(s_Infobar))/2, 1.0, 1.0, 0.0, global.menucol, infobar_focus);
		}
		surface_reset_target();
	}else
		infobar_surf = surface_create(1280, sprite_get_height(s_Infobar));
}