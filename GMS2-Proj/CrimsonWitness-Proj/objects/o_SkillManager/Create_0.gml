okaytogo = true;

targetindex = 0; // -1 for Player, 0+ for enemies
userindex = 0; // -1 for Player, 0+ for enemies

// Screen space location for drawing the effect
ss_xloc = 0;
ss_yloc = 0;

// EffectAnimation
drawfx = true;
fx_sprite = s_RingTargetFX;
imgframe = 0.0;
imgrate = 0.25;

// Audio
sfxToPlay = a_FrLgSlash;
sfxplayed = false;

// Calculations
damagetimer = 10;
damagedealt = false;
basedmg = 10;