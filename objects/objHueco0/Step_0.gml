for (var i = 0; i<ds_list_size(objCerradura.lista); i+=1){
	if i == 0 and !objCerradura.mostro1 and ds_list_size(Object12.algosemueve) == 0{
	if ds_list_find_value(objCerradura.lista, i) == 0{
		motion_set(90 , 3);
		Semueve = true;
		ds_list_add(Object12.algosemueve, 1);
		objCerradura.mostro1 = true;
		}
	}
	if i == 1 and !objCerradura.mostro2 and objCerradura.termino1 and ds_list_size(Object12.algosemueve) == 0{
	if ds_list_find_value(objCerradura.lista, i) == 0{
		motion_set(90 , 3);
		Semueve = true;
		ds_list_add(Object12.algosemueve, 1);
		objCerradura.mostro2 = true;
		}
	}
	if i == 2 and !objCerradura.mostro3 and objCerradura.termino2 and ds_list_size(Object12.algosemueve) == 0{
	if ds_list_find_value(objCerradura.lista, i) == 0{
		motion_set(90 , 3);
		Semueve = true;
		ds_list_add(Object12.algosemueve, 1);
		objCerradura.mostro3 = true;
		}
	}
	if i == 3 and !objCerradura.mostro4 and objCerradura.termino3 and ds_list_size(Object12.algosemueve) == 0{
	if ds_list_find_value(objCerradura.lista, i) == 0{
		motion_set(90 , 3);
		Semueve = true;
		ds_list_add(Object12.algosemueve, 1);
		objCerradura.mostro4 = true;
		}
	}
	if i == 4 and !objCerradura.mostro5 and objCerradura.termino4 and ds_list_size(Object12.algosemueve) == 0{
	if ds_list_find_value(objCerradura.lista, i) == 0{
		motion_set(90 , 3);
		Semueve = true;
		ds_list_add(Object12.algosemueve, 1);
		objCerradura.mostro5 = true;
		}
	}
}