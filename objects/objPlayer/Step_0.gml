var xSpeed = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * walk_speed;
var ySpeed = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * walk_speed;

if(xSpeed != 0 or ySpeed != 0) {
    if(ySpeed > 0) sprite_index = sprIvanWalkDown; 
    else if (ySpeed < 0) sprite_index = sprIvanWalkUp;
    else if (xSpeed > 0) sprite_index = sprIvanWalkRight;
    else if (xSpeed < 0) sprite_index = sprIvanWalkRight; 
        
    facing = point_direction(0, 0, xSpeed, ySpeed);   
        
    
} /*else {
    if(sprite_index == sprIvanWalkDown) sprite_index = spr_player_idle_down;
    else if(sprite_index == sprIvanWalkUp) sprite_index = spr_player_idle_up;
    else if(sprite_index == sprIvanWalkRight) sprite_index = spr_player_idle_right;    
    else if(sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;      
}*/

if(xSpeed < 0){
    image_xscale = -1;
} else if(xSpeed > 0){
    image_xscale = 1;
}

if place_meeting(x + xSpeed, y, objCollision) == true {
    xSpeed = 0;
}
if place_meeting(x, y + ySpeed, objCollision) == true {
    ySpeed = 0;
}

hsp = xSpeed //horizontal speed
vsp = ySpeed //vertical speed
//si es diagonal que vaya igual de velocidad
if(xSpeed != 0 and ySpeed != 0 ){
    hsp = xSpeed * 0.707;
    vsp = ySpeed * 0.707;
}

x += hsp;
y += vsp;
