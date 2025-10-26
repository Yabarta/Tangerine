image_blend = c_white;
if (hp <= 0) {
    audio_play_sound(sndExplosion,0,false);
    sprite_index = sprPowerSourceOff;
    global.endFight += 1;
}
