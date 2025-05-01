// RPM needle calculation for tachometer
var rpm_normalized = clamp(obj_playerCar.rpm / 9000, 0, 1); // Normalize RPM to range 0 to 1
var tachometer_value = rpm_normalized * 9; // Scale the normalized RPM to range 0 to 9

// Now map tachometer value to the tachometer's angle range (-40 to 220 degrees)
tachometer_angle = lerp(220, -40, rpm_normalized); // Map 0-1 RPM to the -40 to 220 angle


// Speed needle calculation for speedometer
var speed_normalized = clamp(obj_playerCar.currentSpeed / 180, 0, 1); // Normalize speed to 0..1
var speedometer_value = speed_normalized * 180; // (Optional) actual displayed speed value

// Map normalized speed to angle range (-40 to 220 degrees)
speedometer_needle = lerp(220, -40, speed_normalized); // Clockwise motion




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







