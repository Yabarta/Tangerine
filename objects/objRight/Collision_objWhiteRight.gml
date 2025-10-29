if keyboard_check_direct(vk_right) {
	y = 0;
	global.points +=100;
	motion_set(-90 , random_range(3,7));
}
