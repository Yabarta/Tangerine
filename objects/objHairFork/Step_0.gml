if (instance_exists(objDialog)) exit;
    
if(global.minigame1Finished) exit;
    
if (instance_exists(objPlayer) && distance_to_object(objPlayer) <= 16) {
    can_talk = true;
    if (keyboard_check_pressed(input_key)) {
        global.dialogo_actual = dialog;
        create_dialog(dialog);
        global.canStart1 = true;
        instance_destroy();
    }
} else {
    can_talk = false;
}