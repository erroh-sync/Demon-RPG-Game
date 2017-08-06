//Enable the use of views
view_enabled = true;

//Make view 0 visible
view_set_visible(0, true);

//Set the port bounds of view 0 to 640x480
view_set_wport(0, 1280);
view_set_hport(0, 720);

//Set main camera
camera = camera_create_view(0, 0, 1280, 720, 0, -1, -1, -1, 0, 0);