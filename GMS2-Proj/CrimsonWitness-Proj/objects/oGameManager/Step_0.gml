// Input
__get_input();

// Music
if(global.currsongindex != -1){
	var i = audio_sound_get_track_position(global.currsong);
	if(i > global.musictracks[global.currsongindex, 1]){
		audio_sound_set_track_position(global.currsong, i - global.musictracks[global.currsongindex, 2]);
	}
}