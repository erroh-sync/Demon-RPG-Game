if(multiplier == 1 || (multiplier > 0 && random(100) < 10)){
	if(o_PlayerInfo.curr_ring > 0)
		__sfx_play(a_RingEffect, 1.0)
	switch(o_PlayerInfo.curr_ring){
		case 1: // Boxing Ring
			basedmg = basedmg * 1.3;			
			repeat(3){instance_create_layer(ss_xloc, ss_yloc, "gui_layer", o_SmlStarParticle);}
			instance_create_layer(ss_xloc, ss_yloc, "gui_layer", o_BonusDamage);
			break;
		default:
			break;
	}
}

// Finalise
event_inherited();