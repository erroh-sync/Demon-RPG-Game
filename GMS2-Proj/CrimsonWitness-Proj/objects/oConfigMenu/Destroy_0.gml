/// @description Clear surfaces on destroy
if(!surface_exists(surface))
	surface_free(surface);