if(!room == roomBossfight) exit;

if (!audio_is_playing(mscLeavingEarly)) {
    audio_play_sound(mscLeavingEarly, 0, false);
}
alarm[0] = 6;