///__combat_skills_menu();
					
if(hasfocus && focustimer == 0){
	var e = instance_find(o_Enemy, selecteditem_x);
	o_CombatCamera.t_yaw = lerp(270, point_direction(e.x, e.y, o_Camera.x + 8, o_Camera.y + 8), 0.35);

	if(global.input_select_down > 0){
		// TOTALLY DEBUG REEEEEEEEE
		// TODO: Spawn the correct attack based on the skill that was selected
		var a = instance_create_layer(0,0,"gui_layer",o_TargetRingAttack);
		
		// Set the target
		a.targetindex = selecteditem_x;
		a.userindex = -1;
		
		// Kill this menu
		with(o_CombatMenuParent)
			instance_destroy();
		
	}else if(global.input_select_down < 0){
		hasfocus = false;
	}
}