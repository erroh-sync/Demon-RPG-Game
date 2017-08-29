// Screenspace Display
if(targetindex >= 0){
	__3d_convert_prepare( o_Camera.x + 8,
						 o_Camera.y + 8,
						 32 - o_Camera.z,
						 o_Camera.x + 8 + cos((o_Camera.yaw + 180) * pi/180),
						 o_Camera.y + 8 - sin((o_Camera.yaw + 180) * pi/180),
						 32 - o_Camera.z + sin((o_Camera.pitch + 180) * pi/180),
						 0,
						 0,
						 1,
						 50,
						 1280/720);
				
	var e = instance_find(o_Enemy, targetindex);					 
	__3d_convert(e.x, e.y, 32 + e.headoffset, o_Camera.x + 8, o_Camera.y + 8, 32 - o_Camera.z);

	ss_xloc = x_2d;
	ss_yloc = y_2d;
}else{
	ss_xloc = 1280/2;
	ss_yloc = 720/2;
}