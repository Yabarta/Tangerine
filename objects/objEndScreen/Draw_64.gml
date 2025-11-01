draw_set_font(underFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_orange);

var text = "JUEGO COMPLETADO\n\n\nEl equipo Tangerine espera que hayas disfrutado del juego tanto como nosotros haciéndolo.\nPor si te lo preguntabas, Iván consiguió llegar a la Alameda.\nSe puso tan hasta arriba de tinto que al día siguiente pensó que lo había soñado todo.\n\nPulsa ESPACIO para volver al menú";
draw_text(display_get_gui_width()/2, display_get_gui_height()/2, text);
