if (obj_playerCar.x >= 18000 - sprite_get_width(global.player_currentCar.color[0].spr)/2) {
    show_debug_message("🏁 Player crossed finish line at x = " + string(obj_playerCar.x));

	if(!scoreboardLoaded){
	var my_x = obj_playerCar.x + sprite_get_width(global.player_currentCar.color[global.player_carColor].spr)/2
	var place = 1; // Start in 1st by default

	if (obj_opponent1.x+(obj_opponent1.sprite_width/2) > my_x) place += 1;
	if (obj_opponent2.x+(obj_opponent2.sprite_width/2) > my_x) place += 1;
	if (obj_opponent3.x+(obj_opponent3.sprite_width/2) > my_x) place += 1;
	global.place = place
	scoreboardLoaded = true
	}
	if (delay_timer < delay_duration) {
    delay_timer++;
	}
	else{
	capture_requested = true
	}
}
var cam = view_camera[0];
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);
var target_x = obj_playerCar.x - cam_w / 2 + 100;
var target_y = obj_playerCar.y - cam_h / 2 -20;
target_x = clamp(target_x, 0, room_width - cam_w);
target_y = clamp(target_y, 0, room_height - cam_h);
camera_set_view_pos(cam, target_x, target_y);

