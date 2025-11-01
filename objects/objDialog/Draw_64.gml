var dx = 0;
var dy = gui_height * 0.7;
var box_w = gui_width;
var box_h = gui_height - dy;

draw_sprite_stretched(sprDialogBox, 0, dx, dy, box_w, box_h);

dx += 44;
dy += 24;

draw_set_font(underFont);

var speaker = messages[current_message].name;
draw_set_color(global.char_colors[$ speaker]);
draw_text(dx, dy, speaker);
draw_set_color(c_white);

dy += 25;

draw_text_ext(dx, dy, draw_message, -1, box_w -2 * dx);