if (instance_exists(objDialog)) exit;
    
if (global.minigame1Finished) exit;
    
if (instance_exists(objPlayer)) {
    can_talk = true;
    if (distance_to_object(objPlayer) <= 0) {
        global.dialogo_actual = dialog;
        create_dialog(dialog);
        if(!instance_exists(objCharger)) {
            instance_create_layer(x + 190,y + 175,"Instances",objCharger);
        }
        if(!instance_exists(objHairFork)) {
            instance_create_layer(x + 430,y + 140,"Instances",objHairFork);
        }
        instance_destroy();
    }
} else {
    can_talk = false;
}