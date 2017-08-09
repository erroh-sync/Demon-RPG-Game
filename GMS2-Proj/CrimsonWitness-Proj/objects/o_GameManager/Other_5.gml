camera_destroy(camera_3d);

// Clear Room Flags
for(var i = 0; i < array_length_1d(global.localflags); i++)
{
	global.localflags[i] = false;
}