if(instance_exists(o_Camera))
	image_angle = point_direction(o_Camera.x + 8, o_Camera.y + 8, x, y);
	
frame++;

if(frame > 90)
{
	frame = 0;
	c_anim = e_EnemyAnimSet.eeas_idle;
}