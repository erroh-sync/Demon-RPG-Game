///__combat_main_menu();
					
if(hasfocus && focustimer == 0){
	if(global.input_select_down > 0){
		switch(selecteditem_x){
			default:
				break;
			case 0:
				o_CombatMenuTargetting.hasfocus = true;
				break;
			case 1:
				o_CombatSkillMenu.hasfocus = true;
				break;
		}
	}
	
	o_CombatCamera.t_yaw = 270;
}

hasfocus = !o_CombatSkillMenu.hasfocus && !o_CombatMenuTargetting.hasfocus && !instance_exists(o_SkillManager);