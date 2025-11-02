if !(room == roomFirstClass ||  room == roomComedor || room == roomPostBossfight || room == roomA4 || room == roomPasilloA || room == roomI2Hallway || room == roomIDown || room == roomBank || room == roomReception) exit;

if (!audio_is_playing(music)) {
    audio_play_sound(music, 0, false);
}
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
alarm[0] = 6;