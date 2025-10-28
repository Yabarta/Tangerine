if ds_list_size(lista) == 0 {
	if fase1 and !listafase1hecha{
		for (var i = 0; i<4; i+=1){
	ds_list_insert(lista ,i,irandom_range(0,4))
		}
		ds_list_copy(lista2 , lista);
		listafase1hecha = true;
	}
	if fase2 and !listafase2hecha{
		for (var i = 0; i<5; i+=1){
	ds_list_insert(lista ,i,irandom_range(0,4))
		}
		ds_list_copy(lista2 , lista);
		listafase2hecha = true;
	}else{
	if fase2 and listafase2hecha{
		tetas = 2;
	}}
}