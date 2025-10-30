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
if (bossfight) {
    sprite[RIGHT] = sprSwordWalkRight;
    sprite[LEFT] = sprSwordWalkLeft;
    sprite[UP] = sprSwordWalkUp;
    sprite[DOWN] = sprSwordWalkDown;
    sprite[IDLE_RIGHT] = sprSwordIdleRight;
    sprite[IDLE_LEFT] = sprSwordIdleLeft;
    sprite[IDLE_UP] = sprSwordIdleUp;
    sprite[IDLE_DOWN] = sprSwordIdleDown;
} else {
    sprite[RIGHT] = sprIvanWalkRight;
    sprite[LEFT] = sprIvanWalkLeft;
    sprite[UP] = sprIvanWalkUp;
    sprite[DOWN] = sprIvanWalkDown;
    sprite[IDLE_RIGHT] = sprIvanIdleRight;
    sprite[IDLE_LEFT] = sprIvanIdleLeft;
    sprite[IDLE_UP] = sprIvanIdleUp;
    sprite[IDLE_DOWN] = sprIvanIdleDown;
}

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
if (global.dialogo_actual == global.aparicionBlanco) {
    if (global.interaction == 1) {
        face = RIGHT;
        if (!instance_exists(objNpcWhite)) {
            var neuquen = instance_create_layer(x+40,y-40,"Instances",objNpcWhite);
            neuquen.depth = 10;
        }
    }
}

if(!global.minigame1Finished) {
    instance_deactivate_object(objWarpBlock);
} else {
    instance_activate_object(objWarpBlock);
}

if (global.dialogo_terminado == global.startMinigame1 && !global.minigame1Finished) {
    show_debug_message(global.interaction);
    if(global.interaction == 0) {
        face = RIGHT;
    }
    room_goto(MinijueoLlve);
    global.dialogo_terminado = 0;
    visible = false;
}
if(global.minigame1Finished && global.locks == 3) {
    visible = true;
    room_goto(roomFirstClass);
    global.locks = 0;
    x = 60;
    y = 125;
}

if(global.dialogo_actual == global.introAgord) {
    if(global.interaction == 3) {
        face = RIGHT;
        if (!instance_exists(objNpcRed)) {
            var agord = instance_create_layer(x+150,y-60,"Instances",objNpcRed);
            agord.image_xscale = -1;
        }
    }
}
if(global.introAgord == global.dialogo_terminado && !global.minigame2Finished) {
    room_goto(MinijuegoRitmo);
    global.dialogo_terminado = 0;
    visible = false;
}
if(global.minigame2Finished && global.points >= 50) {
    visible = true;
    global.points = 0;
    room_goto(roomBank);
    x = 110;
    y = 145;
}

if(global.dialogo_actual == global.postMinigame2) {
    if (!instance_exists(objNpcRed)) {
            var agord = instance_create_layer(x+150,y-60,"Instances",objNpcRed);
            agord.image_xscale = -1;
        }
}

if(global.dialogo_terminado == global.postMinigame2) {
    instance_destroy(objNpcRed);
    global.points = 2;
}

if(global.preBossfight == global.dialogo_terminado) {
    room_goto(roomBossfight);
    global.dialogo_terminado = 0;
}

if(room == roomBossfight && global.endFight < 3) {
    bossfight = true;
} else {
    bossfight = false;
}

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