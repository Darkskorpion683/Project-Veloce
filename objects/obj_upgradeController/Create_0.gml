// Create global variables that allow us to upgrade without the playerCar being created
if (!variable_global_exists("player_accelerationFactor")) {
    global.player_accelerationFactor = 0.1;
    global.player_topSpeed = 140;
    global.player_weight = 3000;
	global.player_nitrous = 0;
	global.player_transmission = 0;
}