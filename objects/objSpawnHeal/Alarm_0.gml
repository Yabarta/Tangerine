
if (instance_exists(objPlayer)) {
    var jugador = instance_find(objPlayer, 0);
    if (jugador.hp < jugador.hpMax && jugador.bossfight) {
        var x_spawn = irandom_range(5, 14)*32;
        var y_spawn = irandom_range(5, 11)*32;
        instance_create_layer(x_spawn, y_spawn, "Instances", objHealing);
    }
}

alarm[0] = 60*10;
