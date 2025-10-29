if (instance_exists(objDialog)) exit;
    
if (!instance_exists(objNpcRed) && !global.minigame2Finished) exit;
    
if (global.points == 2) exit;
    
if (instance_exists(objPlayer)) {
    can_talk = true;
    if (distance_to_object(objPlayer) <= 0) {
        global.dialogo_actual = dialog;
        create_dialog(dialog);
        instance_destroy();
    }
} else {
    can_talk = false;
}