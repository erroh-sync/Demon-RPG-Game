///__play_sfx(sound, volume)
// Setup new song
audio_sound_gain(argument0, argument1 * (Obj_GameManager.SFXVolume/10), 0.0);
audio_play_sound(argument0, 2, false);
