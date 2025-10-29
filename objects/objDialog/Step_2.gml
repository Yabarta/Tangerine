if (current_message < 0) exit;
    
var message = messages[current_message].msg;
var snd = messages[current_message].talk;

if (current_char == 0) {
    audio_play_sound(snd, 0, false);
}
if (current_char < string_length(message)) {
    current_char += char_speed * (1 + keyboard_check(input_key));
    draw_message = string_copy(message, 0, current_char);
} else if (keyboard_check_pressed(input_key)) {
    current_message ++;
    global.interaction ++;
    if (current_message >= array_length(messages)) {
        global.interaction = 0;
        global.dialogo_terminado = global.dialogo_actual;
        instance_destroy();
    } else {
        current_char = 0;
    }
}