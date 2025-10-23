draw_self();

if (can_talk && !instance_exists(objDialog)) {
    draw_sprite(sprInteract, -1, x - 8, y - 16);
}