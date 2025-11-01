if keyboard_check(vk_space) and !activo and ds_list_size(algosemueve) == 0 and objCerradura.mostro1 and objCerradura.mostro2 and objCerradura.mostro3 and objCerradura.mostro4 and objCerradura.mostro5{
	motion_set(90, 3);
	activo = true;
}
if keyboard_check(vk_left) and !activo and ds_list_size(algosemueve) == 0{
	motion_set(180,3);
	activo = true;
	if posicion > 0 {
	posicion -= 1;
	}
}
if keyboard_check(vk_right) and !activo and ds_list_size(algosemueve) == 0{
	motion_set(0,3);
	activo = true;
	if posicion < 4{
	posicion +=1;
	}
}