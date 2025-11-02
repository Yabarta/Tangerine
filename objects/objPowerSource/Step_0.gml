if (instance_exists(objPlayer) && distance_to_object(objPlayer) <= 8 && room == roomA4) {
    can_talk = true;
    if (keyboard_check_pressed(input_key)) {
        global.dialogo_actual = dialog;
        create_dialog(dialog);
    }
} else {
    can_talk = false;
}

if global.dialogo_terminado == global.generador{
    global.canStart4 = true;
    global.puedeBajar = true;
    sprite_index = sprPowerSourceOn;
    image_blend = c_yellow;
}
