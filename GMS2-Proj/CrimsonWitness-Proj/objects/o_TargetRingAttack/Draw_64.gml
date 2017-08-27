// Debug
__draw_text_uni(10,10,"InactiveTimer = " + string(inactivitytimer), 1.0, 1.0, 0.0);
__draw_text_uni(10,30,"RingTimer = " + string(ringtimer), 1.0, 1.0, 0.0);
__draw_text_uni(10,50,"RingShrinkRate = " + string(ringshrinkrate), 1.0, 1.0, 0.0);
__draw_text_uni(10,70,"Multiplier = " + string(multiplier), 1.0, 1.0, 0.0);

// Target Ring
var scl = 1 + sin(lerp(0, 2 * pi, popanim))*0.1;
draw_sprite_ext(s_RingTarget, 0, 640, 360, scl, scl, 0.0, global.menucol, 1.0);

// Ring Glow
scl = clamp(1 + ((ringtimer/100) - thresh_late/100) * 10,1,100);
draw_sprite_ext(s_RingColorPulse, 0, 640, 360, scl, scl, 0.0, global.menucol, ringtimer/thresh_late);

// Pop Target Ring
if(finished){
	scl = 1 + (1.2 * popanim);
	draw_sprite_ext(s_RingTarget, 0, 640, 360, scl, scl, 0.0, global.menucol, (1 - popanim) * (multiplier - 0.3));
}

// Timing Bar
draw_sprite_ext(s_RingTimingBar, 0, 640, 564, 1.0, 1.0, 0.0, global.menucol, 1.0);

// Timing Handle
draw_sprite_ext(s_RingTimingHandle, 0, 640 + lerp(-126,126,1 - (ringtimer/100)), 564, 1.0, 1.0, 0.0, global.menucol, 1.0);