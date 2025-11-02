if !(room == roomPasilloFinal || room == roomPasilloMinijuego) exit;

if (!audio_is_playing(music)) {
    audio_play_sound(music, 0, false);
}
alarm[0] = 6;