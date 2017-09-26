/// @description Initialize the camera
view_enabled = true;
view_set_visible(0, true);
view_set_camera(0, camera_create());
camera_set_proj_mat(view_camera[0], matrix_build_projection_perspective_fov(fov, -window_get_width() / window_get_height(), 0.1, 64000));