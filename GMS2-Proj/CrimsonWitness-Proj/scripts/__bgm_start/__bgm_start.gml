///@description __bgm_start(songindex)
///@param songindex

global.currsongindex = argument0;
global.currsong = audio_play_sound(global.musictracks[argument0, 0],100,false);
audio_sound_gain(global.musictracks[argument0, 0], global.musvolume/10, 0.0);