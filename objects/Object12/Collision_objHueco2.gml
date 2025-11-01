motion_set(-90 , 2);
ds_list_add(algosemueve, 1);
if ds_list_find_value(objCerradura.lista, 0) == 2{
		ds_list_delete(objCerradura.lista , 0);
		}
else {
	objCerradura.mostro1 = false;
	objCerradura.mostro2 = false;
	objCerradura.termino1 = false;
	objCerradura.termino2 = false;
	if objCerradura.fase1{
	objCerradura.mostro3 = false;
	objCerradura.mostro4 = false;
	objCerradura.termino3 = false;
	objCerradura.termino4 = false;}
	if objCerradura.fase2  {
	objCerradura.mostro5 = false;
	objCerradura.termino5 = false;}
	
	
	
	ds_list_copy(objCerradura.lista,objCerradura.lista2)
}	
if ds_list_size(objCerradura.lista) == 0{
	if !objCerradura.fase1 {
		objCerradura.fase1 = true;
		objCerradura.mostro1 = false;
	objCerradura.mostro2 = false;
	objCerradura.termino1 = false;
	objCerradura.termino2 = false;
	if objCerradura.fase1{
	objCerradura.mostro3 = false;
	objCerradura.mostro4 = false;
	objCerradura.termino3 = false;
	objCerradura.termino4 = false;}
	if objCerradura.fase2  {
	objCerradura.mostro5 = false;
	objCerradura.termino5 = false;}
	} else{
	if !objCerradura.fase2 {
		objCerradura.fase2 = true;
		objCerradura.mostro1 = false;
	objCerradura.mostro2 = false;
	objCerradura.termino1 = false;
	objCerradura.termino2 = false;
	if objCerradura.fase1{
	objCerradura.mostro3 = false;
	objCerradura.mostro4 = false;
	objCerradura.termino3 = false;
	objCerradura.termino4 = false;}
	if objCerradura.fase2  {
	objCerradura.mostro5 = false;
	objCerradura.termino5 = false;}
	
	}
	}
}