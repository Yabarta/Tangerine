y = 0;
motion_set(-90 , random_range(3,7));
if vecesOut < 3 {
	vecesOut +=1;
}else {
	global.points -=1;
	vecesOut = 0;
}