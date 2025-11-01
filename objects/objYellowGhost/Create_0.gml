if (room == roomPasilloFinal) {
    var path = path_start(pathFinalPasillo, 1, path_action_stop, 1);
}

if global.isInMinigame3{ 
    var bullet0 = variable_instance_get(0, "bullet0"); 
    var bullet1 = variable_instance_get(0, "bullet1");
    var bullet2 = variable_instance_get(0, "bullet2"); 
    var bullet3 = variable_instance_get(0, "bullet3");
    bullets = [bullet0, bullet1, bullet2, bullet3];
    lengthBullets = array_length(bullets);
}

depth = 250;
input_key = vk_space;
can_talk = false;
dialog = global.finalMinijuego3;