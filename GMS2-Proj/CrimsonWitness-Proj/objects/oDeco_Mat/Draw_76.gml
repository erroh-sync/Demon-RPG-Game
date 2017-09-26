/// @description Set up the material to be drawn to.
if(!surface_exists(mat_surf))
	mat_surf = surface_create(matresx,matresy);
	
surface_set_target(mat_surf){
	draw_clear_alpha(c_black, 0.0);
	draw_sprite_ext(s_BattleTransitionGetReady,0,0,0,1.0,1.0,current_time/1000,c_blue,1.0);
}surface_reset_target();

texture = sprite_create_from_surface(mat_surf, 0, 0, matresx, matresy, false, true, 0, 0);