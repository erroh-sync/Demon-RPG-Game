if(instance_exists(o_PlayerOverworld))
	image_angle = point_direction(o_PlayerOverworld.x + 8, o_PlayerOverworld.y + 8, x, y);
	
frame++;

if(frame > 90)
{
	frame = 0;
	c_anim = e_EnemyAnimSet.eeas_idle;
}