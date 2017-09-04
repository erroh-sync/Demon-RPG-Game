event_inherited();

// Image Vars
sprite_index = s_MediumStar;
image_alpha = 1.0;
fadeoverlife = false;
image_angle = random(360);
image_rotrate = 3.0;
image_index = irandom(99);
image_speed = 0.0;

// Movement Vars
direction = random_range( 50.0, 140.0);
gravity = 0.3;
gravity_direction = 270.0;
speed = random_range(6,14);

// Kill Timer
usekilltimer = true;
killtimer = 180;

// Depth Push
depth -=2;