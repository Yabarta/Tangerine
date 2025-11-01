if global.isInMinigame3 {
    for(var i = 0; i < lengthBullets; i++){
        bullet = bullets[i];
        if place_meeting(x, y, bullet){
            bullet.visible = true;
        }
    }
}

if (instance_exists(objPlayer) && distance_to_object(objPlayer) <= 8) {
    can_talk = true;
    if (keyboard_check_pressed(input_key)) {
        global.dialogo_actual = dialog;
        create_dialog(dialog);
    }
} else {
    can_talk = false;
}
