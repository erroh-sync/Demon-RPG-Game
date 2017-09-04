// Reinitialize Blit Numbers
blit_hp = noone;
blit_mp = noone;

// Upper
// HP
if(o_PlayerInfo.hitpoints < display_hp)
	display_hp = o_PlayerInfo.hitpoints; 
else{
	display_hp = lerp(display_hp, o_PlayerInfo.hitpoints, hptweenspeed);
	blit_hp = display_hp;
}
	
// MP
if(o_PlayerInfo.manapoints < display_mp)
	display_mp = o_PlayerInfo.manapoints;
else{
	display_mp = lerp(display_mp, o_PlayerInfo.manapoints, hptweenspeed);
	blit_mp = display_mp;
}
	
// Lower
// HP
if(o_PlayerInfo.hitpoints > display_hp_lower)
	display_hp_lower = o_PlayerInfo.hitpoints;
else{
	display_hp_lower = lerp(display_hp_lower, o_PlayerInfo.hitpoints, hptweenspeed);
	blit_hp = display_hp_lower;
}
	
// MP
if(o_PlayerInfo.manapoints > display_mp_lower)
	display_mp_lower = o_PlayerInfo.manapoints;
else{
	display_mp_lower = lerp(display_mp_lower, o_PlayerInfo.manapoints, hptweenspeed);
	blit_mp = display_mp_lower;
}

// Reinitialize Blit Numbers
if(blit_hp == noone)
	blit_hp = display_hp;
if(blit_mp == noone)
	blit_mp = display_mp;
	
if(blit_hp < 0)
	blit_hp = 0;
if(blit_mp < 0)
	blit_mp = 0;