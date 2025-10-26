if (other.hp < other.hpMax) {
    other.hp += 1;
    audio_play_sound(sndHealing,0,false);
    instance_destroy();
}
