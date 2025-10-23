function draw_shadow(_offset = 0){
    draw_sprite_ext(sprShadow, 0, objPlayer.x, objPlayer.y + _offset, 1, 1, 0, -1, 0.4);
}