if (instance_exists(objDialog)) exit;
    
if (global.canStart1) exit;
    
if (instance_exists(objPlayer)) {
    can_talk = true;
    if (distance_to_object(objPlayer) <= 0) {
        global.dialogo_actual = dialog;
        create_dialog(dialog);
    }
} else {
    can_talk = false;
}