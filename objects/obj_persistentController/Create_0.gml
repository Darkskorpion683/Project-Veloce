// Create global variables that allow us to upgrade without the playerCar being created
if (!variable_global_exists("player_accelerationFactor")) {
    global.player_accelerationFactor = 0.1;
    global.player_topSpeed = 140;
    global.player_weight = 3000;
	global.player_nitrous =15;
	global.player_transmission = 0;
	global.player_carBody = spr_playerCar;
	global.player_topSpeedLevel = 1
	global.player_accelerationLevel = 1
	global.player_weightLevel = 1
	global.player_transmissionLevel = 1
	global.player_nitrousLevel = 1
	global.captured_sprite = spr_btn_credits
	global.playerMoney = 0
}

