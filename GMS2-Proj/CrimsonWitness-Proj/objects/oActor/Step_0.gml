/// @description Movement, collision and animation

//--------------Rotation---------------\\
// TODO: Make this smooth
if(h_input != 0 || v_input != 0){
	movedir = 180 + arctan2(h_input, v_input) * (180/pi);
}

//--------------Movement---------------\\
var spdx = (x - prevx) * 0.8
var spdy = (y - prevy) * 0.8;
var spdz = (z - prevz) * 0.95;
prevx = x;
prevy = y;
prevz = z;

spdx += (v_input * dcos(h_input) + h_input * dsin(h_input)) * movespeed;
spdy += (v_input * dsin(v_input) - h_input * dcos(v_input)) * movespeed;
spdz += grav;
spd = point_distance(0, 0, spdx, spdy);
x += spdx;
y += spdy;
z += spdz;

//--------------Collision---------------\\
// Cast a ray from the player's old position to his new position
var ray = smf_collision_cast_ray(oEnvironment.colbuffer, prevx, prevy, prevz, x, y, z);

// Subtract a small amount so that the player ends up on the correct side of the intersected geometry
x = prevx + (ray[0] - prevx) * 0.99;
y = prevy + (ray[1] - prevy) * 0.99;
z = prevz + (ray[2] - prevz) * 0.99;

// Spherical collision with terrain
ground = false
var avoid = smf_collision_avoid_slope(oEnvironment.colbuffer, x, y, z, collisionradius, 0, 0, 1, 0.5, 0.7)
if avoid[6]// This is true if there was a collision
{
	x = avoid[0];
	y = avoid[1];
	z = avoid[2];
	if avoid[5] > 0.7 // This is actually the dot product between player up-vector and returned up-vector, but since the player's up-vector is [0, 0, 1], I've removed the unnecessary factors
	{
		// If the player is standing on flat ground, set ground to true.
		ground = true;
	}
}