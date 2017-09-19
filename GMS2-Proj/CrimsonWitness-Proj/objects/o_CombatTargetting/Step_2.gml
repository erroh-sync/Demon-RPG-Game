// Screenspace Display
if(hasfocus){
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
				
	var e = instance_find(o_Enemy, selecteditem_x);					 
	__3d_convert(e.x, e.y, 32 + e.headoffset, o_Camera.x + 8, o_Camera.y + 8, 32 - o_Camera.z);

	cursorX = lerp(cursorX, x_2d, 0.1);
	cursorY = lerp(cursorY, y_2d, 0.1);
}else{
	cursorX = lerp(cursorX, 1280/2, 0.1);
	cursorY = lerp(cursorY, 720/2, 0.1);
}