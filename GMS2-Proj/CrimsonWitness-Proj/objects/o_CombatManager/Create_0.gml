enum e_CombatState{
	ecs_init,
	ecs_transitionin,
	ecs_transitionout,
	ecs_preturntalk_init,
	ecs_preturntalk,
	ecs_decision,
	ecs_action,
	ecs_cleanup,
	ecs_playerdied,
	ecs_victory,
	ecs_end
};

enum e_CombatType{
	ect_normal,
	ect_tutorial,
	ect_miniboss,
	ect_boss,
	ect_finalboss
};

state = e_CombatState.ecs_init;
type = e_CombatType.ect_tutorial;

combatroom = r_TestCombat;

turnindex = -1; // -1 = player

t_max = 60;
timer = t_max;

transitionanim = -0.0;
sparksspawned = false;

// Flags for events
event_state = "NULL";

// Do this in the Create Event rather than the Init in Step since Game Maker does this WEIRD SHIT with not calling Step Events again.
with(o_Enemy){
	if(combattagged){
		persistent = true;
		visible = false;
	}
}