// Animation Updating
frame++;
if(frame > 90)
{
	frame = 0;
	c_anim = e_EnemyAnimSet.eeas_idle;
}

// Death Fadeout
if(hitpoints <= 0){
	alpha = lerp(alpha, -0.5, 0.075);
}

// Damage Flicker
flickertimer -= 1;
if(lasthp != hitpoints){
	flickertimer = 60;
	lasthp = hitpoints;
}