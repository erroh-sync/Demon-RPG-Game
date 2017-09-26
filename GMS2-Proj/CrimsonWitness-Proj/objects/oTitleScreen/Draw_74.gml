if(!surface_exists(surface))
	surface = surface_create(1280, 720);

// Initial Draw
surface_set_target(surface){
	draw_clear_alpha(c_black, 0.0);
	
	draw_set_alpha(focusanim);
	
	// The main title
	draw_sprite(sTitle, 0, 640, 393);
	
	// Copyright Information
	draw_sprite(sCopyright, 0, 640, 720);
	
	// Button prompt
	draw_sprite(sPrompt, 0, 640, 582);
	
	// Button prompt highlight
	draw_set_alpha(abs(sin(current_time/1024) * focusanim));
	draw_sprite(sPromptHighlight, 0, 640.5, 582);
	
	draw_set_alpha(1.0);
}surface_reset_target();