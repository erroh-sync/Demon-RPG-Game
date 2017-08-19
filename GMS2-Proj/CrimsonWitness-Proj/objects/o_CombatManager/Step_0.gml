switch(state){
	// Initialization State
	case e_CombatState.ecs_init:
	{
		if(instance_exists(o_PlayerOverworld)){
			global.p_saved_x = o_PlayerOverworld.x;
			global.p_saved_y = o_PlayerOverworld.y;
			global.p_saved_r = o_PlayerOverworld.facedir;
		}

		with(o_Enemy){
			if(combattagged)
				persistent = true;
				visible = false;
		}
		
		state = e_CombatState.ecs_transitionin;
				
		break;
	}
	// Entering the transition while still in the original room
	case e_CombatState.ecs_transitionin:
	{
		if(true) //TODO: Animation Done
		{
			room_goto(combatroom);

			with(o_Enemy)
					visible = true;
					
			state = e_CombatState.ecs_transitionout;
		}
		break;
	}
	// Exiting the transition in the combat room
	case e_CombatState.ecs_transitionout:
	{
		if(true) //TODO: Animation Done
		{
			state = e_CombatState.ecs_decision;
		}
		break;
	}
	// During this state, the player decides what to do, or enemy AI picks a move.
	case e_CombatState.ecs_decision:
	{
		if(currentturn < 0)
		{
			// Player Turn, spawn the menu if it doesn't exist
		}
		else
		{
			// Enemy Turn, Pick a move then move to the actions state
		}
		break;
	}
	// Actions are performed during this turn
	case e_CombatState.ecs_action:
	{
		if(true) // If the move is finished
		{
			// Next turn
			currentturn += 1;
			if(currentturn > instance_number(o_Enemy) - 1);
				currentturn = -1;
				
			// Back to decision state
			state = e_CombatState.ecs_decision;
		}
		break;
	}
}