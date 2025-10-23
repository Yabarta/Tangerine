var target_x = clamp(objPlayer.x - 240, 0, room_width - 480);
var target_y = clamp(objPlayer.y - 90, 0, room_height - 270);

target_x = floor(target_x);
target_y = floor(target_y);

camera_set_view_pos(view_camera[0], target_x, target_y);