///@description __bgm_stop()
if(global.currsongindex >= 0){
	audio_stop_sound(global.musictracks[global.currsongindex, 0]);
	global.currsongindex = -1;
}