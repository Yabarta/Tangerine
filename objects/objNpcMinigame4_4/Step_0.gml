if (instance_exists(objDialog)) exit;
    
if !(global.foodProgress >= 3) exit;
    
if (instance_exists(objPlayer) && distance_to_object(objPlayer) <= 24) {
    can_talk = true;
    if (keyboard_check_pressed(input_key)) {
        global.dialogo_actual = dialog;
        create_dialog(dialog);
        global.foodProgress += 1;
        instance_destroy();
    }
} else {
    can_talk = false;
}