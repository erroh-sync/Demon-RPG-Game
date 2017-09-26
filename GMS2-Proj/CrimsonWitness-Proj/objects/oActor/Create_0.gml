z = 50;
yaw = 0;

// used for velocity calculation
prevx = x;
prevy = y;
prevz = z;

movedir = 0;
movespeed = 3;
grav = -1.5;

// Collision variables
collisionradius = 35;
ground = true;

h_input = 0;
v_input = 0;

//Load model and texture
actormodel = smf_model_load("actors/testactor/Gign.smf");
actortex = sprite_add("actors/testactor/Gign.png", 0, 0, 0, 0, 0);

//Load animations
animRun = smf_animation_load("actors/testactor/GignRun.ani");
animIdle = smf_animation_load("actors/testactor/GignIdle.ani");

//Create sample
animationTime = 0;
sample = smf_sample_create(animIdle, SMF_loop_quadratic, 0);

//Settings for lerping between animations
animationIndex = animIdle;
prevAnimation = animIdle;
prevSample = sample;
switchAnimationProgress = 0;
