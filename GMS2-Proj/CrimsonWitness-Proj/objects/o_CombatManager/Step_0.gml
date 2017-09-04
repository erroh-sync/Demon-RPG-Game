switch(state){
	// Initialization State
	case e_CombatState.ecs_init:
	{
		// Temporary mini-save
		if(instance_exists(o_PlayerOverworld)){
			global.p_saved_x = o_PlayerOverworld.x;
			global.p_saved_y = o_PlayerOverworld.y;
			global.p_saved_r = o_PlayerOverworld.facedir;
			global.p_saved_map = asset_get_index(room_get_name(room));
		}
		
		// Stop Music
		__bgm_stop();
		
		// Change state
		state = e_CombatState.ecs_transitionin;				
		break;
	}
	// Entering the transition while still in the original room
	case e_CombatState.ecs_transitionin:
	{
		if(transitionanim < 1.0 || instance_exists(o_StarParticle)){
			transitionanim = lerp(transitionanim, 1.1, 0.075);
			
			if(transitionanim >= 1.0 && !sparksspawned){
				sparksspawned = true;
				repeat(irandom_range(10,15)){
					var xpos = irandom(1280);
					instance_create_layer(xpos, lerp(720/2 + 50, 720/2 - 10, xpos/1280), layer, o_StarParticle);
				}
				
				repeat(irandom_range(20,30)){
					var xpos = irandom(1280);
					instance_create_layer(xpos, lerp(720/2 + 50, 720/2 - 10, xpos/1280), layer, o_SmlStarParticle);
				}
				
				instance_create_layer(1280/2, 720/2, layer, o_CombatGetReady);
			}
		}else{
			room_goto(combatroom);

			with(o_Enemy)
					visible = true;
					
			o_CombatGetReady.isin = false;
			
			state = e_CombatState.ecs_transitionout;
		}
		break;
	}
	// Exiting the transition in the combat room
	case e_CombatState.ecs_transitionout:
	{
		// Play Music
		if(global.currsongindex < 0){
			switch(type)
			{
				default:
					__bgm_start(1);
					break;
			}
		}
	
		if(transitionanim > 0.0){
			transitionanim = lerp(transitionanim, -0.1, 0.05);
		}else{
			with(o_CombatGetReady){instance_destroy();}
			state = e_CombatState.ecs_preturntalk_init;
		}
		break;
	}
	// Generate pre-turn dialogue from a script
	case e_CombatState.ecs_preturntalk_init:
	{
		switch(type){
			case e_CombatType.ect_tutorial:
				__events_combat_tutorial();
			break;
			default:
			break;
		}
		state = e_CombatState.ecs_preturntalk;
		break;
	}
	// Run dialogue until it's finished
	case e_CombatState.ecs_preturntalk:
	{
		// Continue if all dialogue is finished running.
		if(!instance_exists(o_DialogueBox))
			state = e_CombatState.ecs_decision;
		break;
	}
	// During this state, the player decides what to do, or enemy AI picks a move.
	case e_CombatState.ecs_decision:
	{
		if(instance_exists(o_SkillManager))
			state = e_CombatState.ecs_action;
		else{
			if(turnindex < 0)
			{
				// Player Turn, spawn the menu if it doesn't exist
				if(!instance_exists(o_CombatMenuParent))
					instance_create_layer(0,0,"gui_layer",o_CombatMainMenu);
			}
			else
			{
				// Enemy Turn, Pick a move then move to the actions state
				//turnindex = -1; //SUPER DEBUG SINCE CURRENTLY THERE'S NO ENEMY ATTACKS
				
				var e = instance_find(o_Enemy, turnindex);
				o_CombatCamera.t_yaw = lerp(270, point_direction(e.x, e.y, o_Camera.x + 8, o_Camera.y + 8), 0.5);
				
				// TOTALLY DEBUG REEEEEEEEE
				// TODO: Spawn the correct attack based on the skill that was selected
				var a = instance_create_layer(0,0,"gui_layer",o_PoundSkill);
		
				// Set the target
				a.targetindex = -1;
				a.userindex = turnindex;
				
				state = e_CombatState.ecs_action;
			}
		}
		break;
	}
	// Actions are performed during this turn
	case e_CombatState.ecs_action:
	{
		if(!instance_exists(o_SkillManager)) // If the move is finished
		{
			timer -= 1;
			if(timer <= 0){
				timer = t_max;
				
				// Back to decision state
				state = e_CombatState.ecs_cleanup;
			}
		}
		break;
	}
	// Handles culling any enemies that may have died last actionstate. Also handles checking if the player has died.
	case e_CombatState.ecs_cleanup:
	{
		// Check enemy death
		for(var i = 0; i < instance_number(o_Enemy); i++)
		{
			var e = instance_find(o_Enemy, i);
			
			// Check if their HP has reached zero
			if(e.hitpoints <= 0){
				if(e.alpha <= 0)
					with(e){instance_destroy();}
				else
					break;
			}
		}
		
		// Check player death
		if(o_PlayerInfo.hitpoints <= 0){
			state = e_CombatState.ecs_playerdied;
			break;
		}
		
		// Check player victory
		if(instance_number(o_Enemy) <= 0){
			state = e_CombatState.ecs_victory;
			break;
		}
		
		// Next turn
		turnindex += 1;
		if(turnindex > instance_number(o_Enemy) - 1)
		{
			turnindex = -1;
			state = e_CombatState.ecs_preturntalk_init;
			break;
		}
				
		// Back to decision state
		state = e_CombatState.ecs_decision;
		break;
	}
	// Displays player results and moves into the end state.
	case e_CombatState.ecs_victory:
	{
		state = e_CombatState.ecs_end;
	}
	// Returns to the overworld. 
	case e_CombatState.ecs_end:
	{
		//TODO: Add a proper scene transition in
		room_goto(global.p_saved_map);
		instance_destroy();
	}
}