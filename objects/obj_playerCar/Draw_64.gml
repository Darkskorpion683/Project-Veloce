var gear_text = 10
var rpm_text = 10
var speed_text = 10
var shift_text = 10

if obj_playerCar.x >= 19000 {
	gear_text = 1000
	rpm_text = 1000
	speed_text = 1000
	shift_text = 1000

	// Determine Winner and Placements
	var racers = [
	    { name: "Player", x: obj_playerCar.x, is_player: true },
	    { name: "Opponent 1", x: obj_opponent1.x, is_player: false },
	    { name: "Opponent 2", x: obj_opponent2.x, is_player: false },
	    { name: "Opponent 3", x: obj_opponent3.x, is_player: false }
	];

	// Sort racers
	array_sort(racers, false)

	var first = racers[0];
	var second = racers[1];
	var third = racers[2];
	var fourth = racers[3];

	draw_set_color(c_white)
	draw_text(10, 10, "1st: " + first.name)
	draw_text(10, 30, "2nd: " + second.name)
	draw_text(10, 50, "3rd: " + third.name)
	draw_text(10, 70, "4th: " + fourth.name)
}

draw_text(gear_text, 10, "Gear: " + string(gear));
draw_text(rpm_text, 30, "RPM: " + string(round(rpm)));
draw_text(speed_text, 50, "Speed: " + string(currentSpeed));
draw_text(shift_text, 70, "Perfect Shift: " + string(optimalShiftPoints[gear-1]));

draw_set_color(c_white)
