///__stop_song(bPause)
if(argument0)
    audio_pause_sound(Obj_MusicManager.snd_currentsong);
else
    audio_stop_sound(Obj_MusicManager.snd_currentsong);
