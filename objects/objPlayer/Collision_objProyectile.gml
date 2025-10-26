if (alarm[0] <= 0) {
    hp -= other.damage;
    alarm[0] = 60;
    audio_play_sound(sndPlayerHit,0,false);
    image_blend = c_red;
}