enum e_CombatState{
	ecs_init,
	ecs_transitionin,
	ecs_transitionout,
	ecs_decision,
	ecs_action,
	ecs_playerdied,
	ecs_victory
};

state = e_CombatState.ecs_init;

combatroom = r_PrisonCombat;

turnindex = -1; // -1 = player