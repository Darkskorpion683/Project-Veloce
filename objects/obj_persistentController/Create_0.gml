// Create global variables that allow us to upgrade without the playerCar being created
if (!variable_global_exists("player_accelerationFactor")) {
    global.carRoster = carList()
	global.player_topSpeed = upgradeHandler(0,0);
	global.player_accelerationFactor = upgradeHandler(1,0);
	global.player_transmission = upgradeHandler(2,0);
    global.player_weight = upgradeHandler(3,0);
	global.player_nitrous = upgradeHandler(4,0);
	global.player_currentCar = global.carRoster[0];
	global.player_carColor = 0
	global.player_topSpeedLevel = 0
	global.player_accelerationLevel = 0
	global.player_weightLevel = 0
	global.player_transmissionLevel = 0
	global.player_nitrousLevel = 0
	global.captured_sprite = pointer_null
	global.playerMoney = 0
	global.AIDifficulty = 0
	global.AICLass = "D"
	global.raceIndex = 0
}

