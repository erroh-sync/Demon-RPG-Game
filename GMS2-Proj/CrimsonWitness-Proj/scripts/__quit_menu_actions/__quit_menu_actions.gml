///__options_menu_actions();
if(hasfocus && focustimer == 0){
	if(global.input_select_down > 0){
		switch(selecteditem_y){
			case 1:
				hasfocus = false;
				break;
			case 2:
				game_end();
				break;
		}
	}else if(global.input_select_down < 0)
		hasfocus = false;
}

if(selecteditem_y == 0){
	if(global.input_v > 0)
		selecteditem_y = 2;
	else
		selecteditem_y = 1;
}
itemwave[0] = 0;
itemanim[0] = 0;