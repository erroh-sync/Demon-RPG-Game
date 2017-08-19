// Animation
enum e_EnemyAnimSet{
	eeas_idle,
	eeas_physskill,
	eeas_magicskill,
	eeas_hurt,
	eeas_dead
};

c_anim = e_EnemyAnimSet.eeas_idle;
frame = 0;

for(var i = 0; i < 16; i ++){animoffset[i] = random(511);}

// Surface Settings
texsurf = -1;
dimension = 192;

// Misc
combattagged = true;