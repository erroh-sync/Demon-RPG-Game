/// @description Initialize the variables

enum eCamState{
	eNone,
	eFollowPlayer,
	eTrackPlayer,
	eTrackTarget
};

state = eCamState.eNone;

z = 0;
x_to = 0;
y_to = 0;
z_to = 0;
pitch = 0;
yaw = 0;
roll = 0;
fov = -70;

// Follow Player
followdist = 10;