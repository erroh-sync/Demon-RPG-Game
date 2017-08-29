///@description __sfx_play(soundasset, volumemod)
///@param soundasset
///@param volumemod

audio_sound_gain(argument0, global.sfxvolume * argument1, 0.0);
audio_play_sound(argument0, 0, 0);