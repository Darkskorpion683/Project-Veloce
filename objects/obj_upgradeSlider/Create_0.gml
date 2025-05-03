image_speed = 0
costMultiplier = 1

getUpgradeCost = function() {
    var currentLevel = getUpgradeLevel(upgradeSelect);
    var cost = 0;

    if (barProgress > currentLevel) {
        for (var i = currentLevel + 1; i <= barProgress; i++) {
            cost += i * 10* costMultiplier;
        }
    }

    return cost;
};

applyUpgrade = function() {
    var currentLevel = getUpgradeLevel(upgradeSelect);
    if (barProgress > currentLevel) {
		switch upgradeSelect{
			case 0:
			global.player_topSpeed = upgradeHandler(upgradeSelect,barProgress)
			global.player_topSpeedLevel++
			break;
			case 1:
			global.player_accelerationFactor = upgradeHandler(upgradeSelect,barProgress)
			global.player_accelerationLevel++
			break;
			case 2:
			global.player_transmission = upgradeHandler(upgradeSelect,barProgress)
			global.player_transmissionLevel++
			break;
			case 3:
			global.player_weight = upgradeHandler(upgradeSelect,barProgress)
			global.player_weightLevel++
			break;
			case 4:
			global.player_nitrous = upgradeHandler(upgradeSelect,barProgress)
			global.player_nitrousLevel++
			break;
		}
		
    }
};
if (variable_instance_exists(self, "upgradeSelect")) {
    barProgress = getUpgradeLevel(upgradeSelect);
} else {
    show_debug_message("⚠️ upgradeSelect not set!");
    barProgress = 0;
}
buttons = [
	{
		sprite : spr_btn_upgrade_arrow,
		frame : 0,
		thisx : x+(50*UIScale),
		thisy : y,
		scalex : -1*UIScale,
		scaley: 1*UIScale,
	},
	{
		sprite : spr_btn_upgrade_arrow,
		frame : 0,
		thisx : x-(50*UIScale),
		thisy : y,
		scalex : 1*UIScale,
		scaley: 1*UIScale
	}
]