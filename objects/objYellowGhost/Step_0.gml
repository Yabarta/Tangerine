if global.isInMinigame3 {
    for(var i = 0; i < lengthBullets; i++){
        bullet = bullets[i];
        if place_meeting(x, y, bullet){
            bullet.visible = true;
        }
    }
}
