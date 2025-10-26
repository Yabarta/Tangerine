if(instance_exists(objProyectile)) exit;
if (instance_exists(objPlayer)) {
    var jugador = instance_find(objPlayer, 0);
    if (jugador.bossfight) {
        for (var i = 0; i < 2; i++) {
            instance_create_layer(spawn_x, spawn_y, "Instances", objProyectile);
        }
        audio_play_sound(sndCastProyectile,0,false);
    }
}

alarm[0] = 60 * 15;
