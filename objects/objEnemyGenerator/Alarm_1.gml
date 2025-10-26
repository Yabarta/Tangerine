image_blend = c_white;
if (hp <= 0) {
    audio_play_sound(sndExplosion,0,false);
    sprite_index = sprPowerSourceOff;
    image_blend = c_navy;
    global.endFight += 1;
}
