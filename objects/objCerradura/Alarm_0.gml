depth = 1;
randomize();
tetas = 0;
fase1=false;
fase2=false;
lista = ds_list_create();
lista2 = ds_list_create();
for (var i = 0; i<2; i+=1){
	ds_list_insert(lista ,i,irandom_range(0,4))
}
ds_list_copy(lista2 , lista);