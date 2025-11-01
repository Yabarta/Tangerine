// speed variables
move_speed = 3;
diagonal_speed = move_speed * 0.707;
xSpeed = 0;
ySpeed = 0;

// set sprites
sprite[RIGHT] = sprIvanWalkRight;
sprite[LEFT] = sprIvanWalkLeft;
sprite[UP] = sprIvanWalkUp;
sprite[DOWN] = sprIvanWalkDown;
sprite[IDLE_RIGHT] = sprIvanIdleRight;
sprite[IDLE_LEFT] = sprIvanIdleLeft;
sprite[IDLE_UP] = sprIvanIdleUp;
sprite[IDLE_DOWN] = sprIvanIdleDown;

face = IDLE_DOWN;

// is in minigame?
global.dialogo_terminado = 0;
global.interaction = 0;

global.canStart1 = false;
global.minigame1Finished = true;
global.locks = 0;

global.points = 0;
global.minigame2Finished = false;
global.dialogo_actual = 0;

minigame4 = false;

bossfight = false;
hp = 3;
hpMax = 3;
damage = 1;
attackCooldown = 0;
facing = 270;
global.endFight = 0;
depth = 101;