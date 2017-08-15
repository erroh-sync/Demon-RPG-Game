//Enable the use of views
view_enabled = true;

/* Setup 3d View */
//Make view 0 visible
view_set_visible(0, true);

//Set the port bounds of view 0 to 640x480
view_set_wport(0, 1280);
view_set_hport(0, 720);

//Set main camera
camera_3d = camera_create_view(0, 0, 1280, 720, 0, -1, -1, -1, 0, 0);

//Then, we need to build a projection matrix. I keep this in instance scope in case I need to reassign it later. (Though you can retrieve matrices from a camera with camera_get functions
//I use matrix_build_projection_perspective_fov, as it gives the most control over how your projections looks.
//Here's how I use the arguments: I give a 60 degree vertical field of view, with a ratio of view_wport/view_hport, with a 32 unit near clipping plane, and a 32000 far clipping plane. Some of these values may need tweaking to your liking.
projMat = matrix_build_projection_perspective_fov(50, view_get_wport(0)/view_get_hport(0), 0.1, 32000);

//Now we assign the projection matrix to the camera
camera_set_proj_mat(camera_3d, projMat);

//Finally, we bind the camera to the view
view_set_camera(0, camera_3d);