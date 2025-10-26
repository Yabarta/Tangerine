if (instance_exists(objPlayer)) {
    var jugador = instance_find(objPlayer, 0);
    if (jugador.bossfight) {
        var fila = jugador.y div 32;
        var columna = jugador.x div 32;

        if (irandom(1) == 0) {
            audio_play_sound(sndWarn,0,false);
            instance_create_layer(0, fila * 32, "Instances", objWarnThunderH);
        } else {
            audio_play_sound(sndWarn,0,false);
            instance_create_layer(columna * 32, 0, "Instances", objWarnThunderV);
        }    
    }
}


alarm[0] = intervalo;
