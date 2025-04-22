image_speed = 0
getUpgradeCost = function() {
    var currentLevel = getUpgradeLevel(upgradeSelect);
    var cost = 0;

    if (barProgress > currentLevel) {
        for (var i = currentLevel + 1; i <= barProgress; i++) {
            cost += i * 10;
        }
    }

    return cost;
};

applyUpgrade = function() {
    var currentLevel = getUpgradeLevel(upgradeSelect);
    if (barProgress > currentLevel) {
        upgradeHandler(upgradeSelect, barProgress);
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