if(state == e_CombatState.ecs_transitionin || state == e_CombatState.ecs_transitionout)
{
	var off = (1 -clamp(transitionanim, 0, 1)) * 512;

	// Blacks
	draw_set_color(c_black);
	//Upper
	draw_rectangle(0,0 - off,1280,720/2 - off, false);
	//Lower
	draw_rectangle(0,720/2 + off,1280,720 + off, false);
	draw_set_color(c_white);
	
	// Fills
	//Upper
	draw_sprite_ext(s_BattleTransitionBlockout,1,1280/2,720/2 - off, 2.0, 2.0, 0.0, global.menucol, 1.0);
	//Lower
	draw_sprite_ext(s_BattleTransitionBlockout,1,1280/2,720/2 + off, -2.0, -2.0, 0.0, global.menucol, 1.0);
	
	// Anything Extra goes here
	
	// Centres
	//Upper
	draw_sprite_ext(s_BattleTransitionBlockout,0,1280/2,720/2 - off, 2.0, 2.0, 0.0, global.menucol, 1.0);
	//Lower
	draw_sprite_ext(s_BattleTransitionBlockout,0,1280/2,720/2 + off, -2.0, -2.0, 0.0, global.menucol, 1.0);
}