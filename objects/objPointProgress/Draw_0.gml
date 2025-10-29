var x1 = 260;      // posición X inicial
var y1 = 560;      // posición Y inicial
var ancho = 200;  // ancho total de la barra
var alto = 20;    // alto total

var puntos_actuales = clamp(global.points, 0, 40);
var porcentaje = puntos_actuales / 40;

draw_set_color(c_gray);
draw_rectangle(x1, y1, x1 + ancho, y1 + alto, false);

draw_set_color(c_lime);
draw_rectangle(x1, y1, x1 + (ancho * porcentaje), y1 + alto, false);
