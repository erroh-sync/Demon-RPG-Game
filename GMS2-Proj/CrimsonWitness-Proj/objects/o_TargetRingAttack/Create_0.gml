event_inherited();

// Timers
ringtimer = 100;
ringshrinkrate = 0.01;
popanim = 0;

// Thresholds
thresh_late = 15;
thresh_perf = 30;
thresh_close = 38;
thresh_good = 45;

// Colors
c_miss = make_color_rgb(159,50,62);
c_close = c_white;
c_perf = make_color_rgb(241,190,11);
global.menucol = c_white; // Set colour to white on start

// Draw Vals
handlescl = 1.0;
handlejit = 0.0;
glowalph = 1.0;

handleoffset = 0;

// EffectAnimation
okaytogo = false;
fx_sprite = s_RingTargetFX;
imgframe = -10.0;
imgrate = 0.35;

if(o_PlayerInfo.curr_ring <= 0){
	finished = true;
	multiplier = 1;
	
	with(o_CombatManager){
		if(type == e_CombatType.ect_tutorial && event_state == "start_atk")
			event_state = "ring";
	}
}