///__combat_skills_menu();
					
if(hasfocus && focustimer == 0){
	if(global.input_select_down > 0){
		switch(selecteditem_x){
			default:
				// TOTALLY DEBUG REEEEEEEEE
				instance_create_layer(0,0,"gui_layer",o_TargetRingAttack);
				with(o_CombatMainMenu){instance_destroy();}
				break;
		}
	}else if(global.input_select_down < 0){
		hasfocus = false;
	}
}