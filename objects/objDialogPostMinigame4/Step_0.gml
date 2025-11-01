if (instance_exists(objDialog)) exit;
    
if (global.foodProgress < 7) exit;
    
if (instance_exists(objPlayer)) {
    can_talk = true;
    if (distance_to_object(objPlayer) <= 0) {
        global.dialogo_actual = dialog;
        create_dialog(dialog);
        global.foodProgress = 0;
        instance_destroy();
    }
} else {
    can_talk = false;
}