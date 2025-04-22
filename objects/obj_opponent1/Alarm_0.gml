gear += 1;
var newRatio = gearRatios[gear - 1];
rpm = clamp(currentSpeed * newRatio * rpm_per_speed_unit, rpm_idle, rpm_redline);
	
ai_shift_targetRPM = optimalShiftPoints[gear-1] + random_range(-shiftRange/2, shiftRange/2);