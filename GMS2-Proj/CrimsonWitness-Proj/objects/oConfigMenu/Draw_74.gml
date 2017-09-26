if(!surface_exists(surface))
	surface = surface_create(1280, 720);

// Initial Draw
surface_set_target(surface){
	draw_clear_alpha(c_black, 0.0);
	
	// BG
	draw_set_alpha(focusanim * 0.9);
	draw_sprite(sMainMenuBG, 0, 1280/2, 720/2);
	
	draw_set_alpha(focusanim);
	
	// Heading
	draw_sprite(sConfigMenuHeading, 0, 15, 172);
	
	// Buttons
	for(var i = 0; i < ymax; i++){
		draw_sprite(sConfigMenuButtons, i * 2, 86, 244 + (54 * i));
		
		if(selecteditem_y == i)
			draw_sprite(sConfigMenuButtons, (i * 2) + 1, 86, 244 + (54 * i));
	}
	
	// Info
	draw_sprite(sMainMenuInfo, 0, 1, 545);
	__draw_text( 8, 568, "#a" + string_format(focusanim * 255, 3, 0) + infotext[selecteditem_y], sDFKai_Glow, 0.25, 1.0);
	
	draw_set_alpha(1.0);
}surface_reset_target();