if keyboard_check_direct(vk_up) {
	y = 0;
	global.points +=1;
	motion_set(-90 , random_range(3,7));
}
