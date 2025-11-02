draw_set_font(underFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_orange);

var text = "CREDITOS\n\n\nUn juego hecho por José Antonio Aguadero, David Lozano y Pablo Pérez.\nCon especial agradecimiento a Carmen Marín Medina y a nuestros beta testers.\n\nMúsica por:\nMain Menu - David Lozano Acosta.\nEric Skiff - Underclocked.\nPuzzle - Gravity sound.\nUNDERTALE - Death by Glamour; Cover by Luke Pickman - /instrumentmaniac.\nEnergising Game Sports - Inaudio.\nRush hour shift - Epidemic.\nHalloween Electro Swing Medley - The musical ghost.\n\nPulsa ESPACIO para volver al menú";
draw_text(display_get_gui_width()/2, display_get_gui_height()/2, text);
