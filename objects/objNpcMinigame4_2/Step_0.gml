if (instance_exists(objDialog)) exit;
    
if !(global.foodProgress == 1) {
if (instance_exists(objPlayer) && distance_to_object(objPlayer) <= 24) {
    can_talk = true;
    if (keyboard_check_pressed(input_key)) {
        global.dialogo_actual = global.rechacedGreen;
        create_dialog(global.rechacedGreen);
    }
	exit;
} else {
    can_talk = false;
}};
    
if (instance_exists(objPlayer) && distance_to_object(objPlayer) <= 24) {
    can_talk = true;
    if (keyboard_check_pressed(input_key)) {
        global.dialogo_actual = dialog;
        create_dialog(dialog);
        global.foodProgress = 2;
		instance_destroy();
    }
} else {
    can_talk = false;
}