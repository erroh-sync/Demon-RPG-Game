///__set_playing_song(newsong, isNewPrimary)

//Fade out Music
audio_sound_gain(Obj_MusicManager.snd_currentsong, 0, 1.0);

// Setup new song
audio_sound_gain(argument0, Obj_GameManager.MUSVolume/10, 0.0);

// Change the music
if(argument1)
    Obj_MusicManager.snd_primarysong = argument0;

// Set the new song
Obj_MusicManager.snd_currentsong = argument0;
__stop_song(true);
    
// Play the new song
with(Obj_MusicManager)
{
    if(snd_currentsong != snd_primarysong)
        audio_play_sound(snd_currentsong, 1, true);
    else{
        if(audio_is_paused(snd_currentsong))
            audio_resume_sound(snd_currentsong);
        else
            audio_play_sound(snd_currentsong, 1, true);
    }
}
