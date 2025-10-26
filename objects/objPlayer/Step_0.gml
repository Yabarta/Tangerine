right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));

// Movement
hor = (right_key - left_key);
ver = (down_key - up_key);


xSpeed = hor * move_speed;
ySpeed = ver * move_speed;

if hor != 0 && ver != 0{
    xSpeed = hor * diagonal_speed;
    ySpeed = ver * diagonal_speed;
}

// pause while transitioning
if instance_exists(objPauser){
    xSpeed = 0;
    ySpeed = 0;
}

// set sprite
mask_index = sprite[DOWN];
if ySpeed == 0 {
    if xSpeed > 0 {face = RIGHT} 
    if xSpeed < 0 {face = LEFT}
}
    
if xSpeed == 0 {
    if ySpeed > 0 {face = DOWN}
    if ySpeed < 0 {face = UP}
}

if xSpeed == 0 && ySpeed == 0{
    if face == DOWN {face = IDLE_DOWN}
    if face == LEFT {face = IDLE_LEFT}
    if face == RIGHT {face = IDLE_RIGHT}
    if face == UP {face = IDLE_UP}
} else {
    facing = point_direction(0, 0, hor, ver);
}

sprite_index = sprite[face];

//collisions
if place_meeting( x + xSpeed, y, objCollision ) == true {
    xSpeed = 0;
}

if place_meeting( x, y + ySpeed, objCollision ) == true {
    ySpeed = 0;
}

x += xSpeed;
y += ySpeed;

if xSpeed > 0 && face == LEFT {face=RIGHT}
if xSpeed < 0 && face == RIGHT {face=LEFT}
    
if ySpeed > 0 && face == UP {face=DOWN}
if ySpeed < 0 && face == DOWN {face=UP}

//minigames
if(bossfight) {
    if(keyboard_check(vk_space) && attackCooldown <= 0) {
        audio_play_sound(sndSwordSlash,0,false)
        var inst_attack = instance_create_layer(x, y, "Instances", objAttack);
        inst_attack.image_angle = facing;
        inst_attack.depth = -1500;
        if(inst_attack.image_angle = 90) {
            inst_attack.depth = 190;
        }
        inst_attack.owner = id;
        inst_attack.damage = damage;
    attackCooldown = 40;
    }
    if(attackCooldown > 0){
        attackCooldown -= 1;
    } 
    if(instance_exists(objAttack)){
        instance_create_layer(x,y,"Instances",objPauser);
    } else {
        instance_destroy(objPauser);
    }
    if (hp <= 0) {
        room_restart();
        global.endFight = 0;
        hp = 3;
    }
    if (global.endFight >= 3) {
        bossfight = false;
    }

}

//fix pixel movement
y = round(y);
x = round(x);