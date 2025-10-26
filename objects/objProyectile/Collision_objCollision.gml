// Nueva dirección aleatoria tras el choque
direction = irandom_range(0, 359);
motion_set(direction, velocidad);

// Para evitar que se quede “atascada” dentro de la pared:
move_outside_solid(300,1);

