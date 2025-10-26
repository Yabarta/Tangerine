if (hp <= 0) exit;
if (alarm[1] < 0) {
    hp -= other.damage;
    image_blend = c_aqua;
    alarm[1] = 40;
}