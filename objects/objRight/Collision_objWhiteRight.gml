if keyboard_check_direct(vk_right) {
	y = 0;
	global.points += 1;
	motion_set(-90 , random_range(4,7));
}
