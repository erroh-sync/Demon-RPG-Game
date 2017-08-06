///__main_menu_actions();
if(hasfocus && focustimer == 0){
	if(global.input_select_down > 0){
		switch(selecteditem_y){
			default:
				instance_create_layer(0,0,0,o_MainMenuFade);
				break;
			case 2:
				o_OptionsMenu.hasfocus = true;
				break;
			case 3:
				o_QuitMenu.hasfocus = true;
				break;
		}
	}
}

hasfocus = !o_OptionsMenu.hasfocus && !o_QuitMenu.hasfocus && !instance_exists(o_MainMenuFade);