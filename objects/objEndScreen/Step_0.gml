instance_destroy(objPlayer);

if (can_exit && keyboard_check_pressed(vk_space)) {
    room_goto(roomFirstClass);
}
