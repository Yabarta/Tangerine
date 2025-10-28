if keyboard_check(vk_up) and !activo and ds_list_size(algosemueve) == 0{
	motion_set(90, 2);
	activo = true;
}
if keyboard_check(vk_left) and !activo and ds_list_size(algosemueve) == 0{
	motion_set(180,2);
	activo = true;
	if posicion > 0 {
	posicion -= 1;
	}
}
if keyboard_check(vk_right) and !activo and ds_list_size(algosemueve) == 0{
	motion_set(0,2);
	activo = true;
	if posicion < 4{
	posicion +=1;
	}
}