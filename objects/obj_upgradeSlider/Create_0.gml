image_speed = 0
barProgress = getUpgradeLevel(upgradeSelect);
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