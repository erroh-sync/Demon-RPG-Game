if(!surface_exists(texsurf))
	texsurf = surface_create(dimension,dimension);

if(view_current == 0){
	surface_set_target(texsurf);
	draw_clear_alpha(c_black, 0.0);
	event_user(0);
	surface_reset_target();
}