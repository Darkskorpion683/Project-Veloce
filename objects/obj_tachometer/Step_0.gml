// RPM needle calculation
tachometer_needle = 200 - (obj_playerCar.rpm / 9000) * 220

// Speed needle calculation
if obj_playerCar.currentSpeed != obj_playerCar.topSpeed {
	speedometer_needle = 200 - (obj_playerCar.currentSpeed);
} else {
	speedometer_needle = 200 + obj_playerCar.top_speed;	
}

// Nitrous needle calculation
if obj_playerCar.nitrous_used {
	if nitrous_needle != 630 {
		nitrous_needle += 5;	
	}
}

// Shift progress for light timings
var currentRPM = obj_playerCar.rpm;
var shiftRPM = 6200;
var rpmStep = 300;

var rpmAboveMin = max(0, currentRPM - minRPM);
shift_progress = clamp(floor(rpmAboveMin / rpmStep), 0, 14);







