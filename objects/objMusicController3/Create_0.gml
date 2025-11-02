if (audio_is_playing(mscDeathByGlamour)) {
    audio_stop_sound(mscDeathByGlamour);
} else if (audio_is_playing(mscLeavingEarly)) {
    audio_stop_sound(mscLeavingEarly);
} else if (audio_is_playing(mscPuzzle)) {
    audio_stop_sound(mscPuzzle);
} else if (audio_is_playing(mscRace)) {
    audio_stop_sound(mscRace);
} else if (audio_is_playing(mscCooking)) {
    audio_stop_sound(mscCooking);
} 
music = mscBackground;
alarm[0] = 6;