enum e_CombatState{
	ecs_init,
	ecs_transitionin,
	ecs_transitionout,
	ecs_decision,
	ecs_action,
	ecs_cleanup,
	ecs_playerdied,
	ecs_victory
};

state = e_CombatState.ecs_init;

combatroom = r_TestCombat;

turnindex = -1; // -1 = player

t_max = 60;
timer = t_max;

transitionanim = -0.0;
sparksspawned = false;