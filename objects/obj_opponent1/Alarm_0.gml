gear += 1;
var newRatio = gearRatios[gear - 1];
rpm = clamp(currentSpeed * newRatio * rpm_per_speed_unit, rpm_idle, rpm_redline);
	
ai_shift_targetRPM = calculateOptimalShiftPoints(gear) + random_range(-shiftRange/2, shiftRange/2);