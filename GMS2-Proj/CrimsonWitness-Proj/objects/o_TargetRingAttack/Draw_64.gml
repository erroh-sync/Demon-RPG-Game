// Debug
/*
__draw_text_uni(10,10,"InactiveTimer = " + string(inactivitytimer), 1.0, 1.0, 0.0);
__draw_text_uni(10,30,"RingTimer = " + string(ringtimer), 1.0, 1.0, 0.0);
__draw_text_uni(10,50,"RingShrinkRate = " + string(ringshrinkrate), 1.0, 1.0, 0.0);
__draw_text_uni(10,70,"Multiplier = " + string(multiplier), 1.0, 1.0, 0.0);
__draw_text_uni(10,90,"Anim = " + string(anim), 1.0, 1.0, 0.0);
*/

// Target Ring
var scl = 1 + sin(lerp(0, pi, popanim))*0.1;
draw_sprite_ext(s_RingTarget, 0, ss_xloc, ss_yloc, scl, scl, current_time/32, c_white, anim);

// Ring Glow
scl = clamp(1 + ((ringtimer/100) - thresh_late/100) * 10,1,100);
var xoff =  lerp(ss_xloc, 640, ((ringtimer/100) - thresh_late/100) * 0.75);
var yoff =  lerp(ss_yloc, 360, ((ringtimer/100) - thresh_late/100) * 0.75);
draw_sprite_ext(s_RingColorPulse, 0, xoff, yoff, scl, scl, 0.0, c_white, clamp(ringtimer/thresh_late * glowalph,0,1) * clamp(anim,0,1));

// Pop Target Ring
if(finished){
	scl = 1 + (1.2 * popanim);
	xoff =  lerp(ss_xloc, 640, popanim * 0.1);
	yoff =  lerp(ss_yloc, 360, popanim * 0.1);
	draw_sprite_ext(s_RingTarget, 0, xoff, yoff, scl, scl, current_time/32, c_white, clamp((1 - popanim) * (multiplier - 0.3),0,1) * clamp(anim,0,1));
}

// Timing Bar
draw_sprite_ext(s_RingTimingBar, 0, ss_xloc, 564, 1.0, 1.0, 0.0, c_white, anim);

// Timing Handle
var xj = random_range(-handlejit,handlejit);
var yj = random_range(-handlejit,handlejit);
draw_sprite_ext(s_RingTimingHandle, 0, ss_xloc + handleoffset + xj, 564 + yj, handlescl, handlescl, 0.0, c_white, anim);