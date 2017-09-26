/// @description Apply movement input before running parent script
//Input
h_input = global.input_h;
v_input = global.input_v;

yaw += global.input_shoulder * camspeed;

event_inherited();