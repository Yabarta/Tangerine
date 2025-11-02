y = 0;
motion_set(-90 , random_range(3,7));
if objUp.vecesOut < 3 {
	objUp.vecesOut +=1;
}else {
	global.points -=1;
	objUp.vecesOut = 0;
}