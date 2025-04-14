// Get the active camera
var cam = view_camera[0];

// Center camera view on the player's position
var target_x = obj_playerCar.x - (camera_get_view_width(cam) / 2);
var target_y = obj_playerCar.y - (camera_get_view_height(cam) / 2);

// Set the camera's position directly
camera_set_view_pos(cam, target_x, target_y);

// Room dimensions
var room_w = room_width;
var room_h = room_height;

// Camera dimensions
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

// Centered position
var target_x = obj_playerCar.x - (cam_w / 2) + 100;
var target_y = obj_playerCar.y - cam_h / 2;

// Clamp camera so it doesn't scroll outside room
target_x = clamp(target_x, 0, room_w - cam_w);
target_y = clamp(target_y, 0, room_h - cam_h);

// Set camera position
camera_set_view_pos(cam, target_x, target_y);