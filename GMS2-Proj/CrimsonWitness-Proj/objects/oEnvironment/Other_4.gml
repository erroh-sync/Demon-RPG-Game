/// @description Load the map from the designated file paths.
event_inherited();
colbuffer = smf_collision_load_buffer(colpath);

// Ensure we're at 0,0,0 so that we match up with out collision data
x = 0;
y = 0;
z = 0;
pitch = 0;
yaw = 0;
roll = 0;
xscl = 1.0;
yscl = 1.0;
zscl = 1.0;