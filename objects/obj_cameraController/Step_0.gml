if (!capture_requested && obj_playerCar.x >= 18000) {
    capture_requested = true;

    // Freeze everything
    var cam = view_camera[0];
    global.freeze_cam_x = camera_get_view_x(cam);
    global.freeze_cam_y = camera_get_view_y(cam);
    global.freeze_camera = true;
    global.freeze_gameplay = true;

    alarm[0] = 1; // One frame delay
}
var cam = view_camera[0];

if (!global.freeze_camera) {
    var cam_w = camera_get_view_width(cam);
    var cam_h = camera_get_view_height(cam);
    var target_x = obj_playerCar.x - cam_w / 2 + 100;
    var target_y = obj_playerCar.y - cam_h / 2 - 50;
    target_x = clamp(target_x, 0, room_width - cam_w);
    target_y = clamp(target_y, 0, room_height - cam_h);
    camera_set_view_pos(cam, target_x, target_y);
} else {
    camera_set_view_pos(cam, global.freeze_cam_x, global.freeze_cam_y);
}