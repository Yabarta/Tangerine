if (instance_exists(objDialog)) exit;
    
if (!global.locks == 1) exit
    
if (instance_exists(objPlayer)) {
    can_talk = true;
    if (distance_to_object(objPlayer) <= 0) {
        global.dialogo_actual = dialog;
        create_dialog(dialog);
        global.locks = 0;
        instance_create_layer(110, 80,"Instances",objNpcWhite);
        instance_destroy();
    }
} else {
    can_talk = false;
}