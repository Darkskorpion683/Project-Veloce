if (keyboard_check_pressed(ord("F"))) {
    window_set_fullscreen(!window_get_fullscreen());
}
if (keyboard_check_pressed(vk_delete)){
	room_goto(rm_vehicleUpgradeMenu)
}
if (keyboard_check_pressed(vk_end)){
	room_goto(rm_raceGameplay)
}
if (keyboard_check_pressed(vk_pagedown)){
	room_goto(rm_raceMap)
}
if (keyboard_check_pressed(vk_pageup)){
	global.playerMoney += 10000
}
if (keyboard_check_pressed(vk_home)){
	global.raceIndex++
}