if (instance_exists(objPlayer) && distance_to_object(objPlayer) <= 8 && room == roomA4 && global.canStart4 == false) {
    can_talk = true;
    if (keyboard_check_pressed(input_key)) {
        global.dialogo_actual = dialog;
        create_dialog(dialog);
    }
} else {
    can_talk = false;
}

if (global.dialogo_terminado == global.generador) {
    audio_play_sound(sndCastThunder,0,false);
    global.canStart4 = true;
    global.puedeBajar = true;
    sprite_index = sprPowerSourceOn;
    image_blend = c_yellow;
    global.dialogo_terminado = 0;
}
