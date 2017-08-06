///__options_menu_actions();
if(hasfocus && focustimer == 0){
	if(global.input_select_down != 0){
		switch(selecteditem_y){
			case 0:
				window_set_fullscreen(!window_get_fullscreen());
				break;
			case 1:
				global.musvolume = clamp(global.musvolume + global.input_select, 0, 11);
				break;
			case 2:
				global.sfxvolume = clamp(global.sfxvolume + global.input_select, 0, 11);
				break;
			case 3:
				hasfocus = false;
				break;
		}
		__save_options();
	}
}

if(!hasfocus)
	selecteditem_y = 0;