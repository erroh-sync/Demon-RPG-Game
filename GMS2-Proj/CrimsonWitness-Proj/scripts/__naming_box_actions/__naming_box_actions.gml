///__naming_box_actions()
if(hasfocus && focustimer == 0){
	if(global.input_select_down > 0){
		if(selecteditem_y < 3 && string_length(global.p_name) < 8)
		{
			global.p_name = global.p_name + menuitems[selecteditem_y,selecteditem_x];
			if(string_length(global.p_name) == 8){
				selecteditem_y = 3;
				selecteditem_x = 0;
			}
		}
		else if(selecteditem_y == 3){
			if(selecteditem_x == 1)
				global.p_name = string_copy(global.p_name,0,string_length(global.p_name)-1);
			else
				event_user(0);
		}
	}else if(global.input_select_down < 0){
		global.p_name = string_copy(global.p_name,0,string_length(global.p_name)-1);
	}
}