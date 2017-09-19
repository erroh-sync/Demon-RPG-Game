///__combat_main_menu();
					
if(hasfocus && focustimer == 0){
	if(global.input_select_down > 0){
		switch(selecteditem_x){
			default:
				break;
			case 0:
				o_CombatTargetting.hasfocus = true;
				break;
			case 1:
				instance_create_layer(1280 - 16, 720 - 32, "gui_layer", o_SkillMenu);
				break;
			case 2:
				instance_create_layer(1280 - 16, 720 - 32, "gui_layer", o_ItemMenuManager);
				break;
		}
	}	
	o_CombatCamera.t_yaw = 270;
}

hasfocus = !instance_exists(o_SkillMenu) && !instance_exists(o_ItemMenuManager) && !o_CombatTargetting.hasfocus;