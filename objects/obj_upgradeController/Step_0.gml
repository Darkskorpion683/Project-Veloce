if (keyboard_check_pressed(ord("F"))) {
    window_set_fullscreen(!window_get_fullscreen());
}
if (keyboard_check_pressed(vk_delete)){
	room_goto(rm_vehicleUpgradeMenu)
}
if (keyboard_check_pressed(vk_end)){
	room_goto(rm_raceGameplay)
}