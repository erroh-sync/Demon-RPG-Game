event_inherited();

// Depth Push
depth -=5;

// Image Vars
sprite_index = s_Perfect;
image_index = global.currentlang; // Each frame corresponds to a language option
image_speed = 0.0;
usemenucol = true;

// Movement Vars
direction = random_range( 75.0, 105.0);
gravity = 0.35;
gravity_direction = 270.0;
speed = 14.0;

// Kill Timer
usekilltimer = true;
killtimer = 360;