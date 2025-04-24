// --- Get current gear ratio ---
var ratio = gearRatios[gear - 1];
rpm = currentSpeed * ratio * rpm_per_speed_unit;
rpm = clamp(rpm, rpm_idle, rpm_redline);

// --- Calculate RPM from speed and gear ratio ---
rpm = currentSpeed * ratio * rpm_per_speed_unit;
rpm = clamp(rpm, rpm_idle, rpm_redline);

var torque = getTorqueFromRPM(rpm);

acceleration = torque / ratio * accelerationFactor;

currentSpeed += acceleration;
currentSpeed = clamp(currentSpeed, 0, topSpeed);

x += currentSpeed / 5;

// Wheels tracking car body
leftTire.x = (self.x - 39) + currentSpeed / 5 
leftTire.y = self.y + 8

rightTire.x = (self.x + 29) + currentSpeed / 5 
rightTire.y = self.y + 8


if (gear < maxGear && rpm >= ai_shift_targetRPM && ai_shift_targetRPM <= rpm_redline) {
    // Normal shift
    gear += 1;
    var newRatio = gearRatios[gear - 1];
    rpm = clamp(currentSpeed * newRatio * rpm_per_speed_unit, rpm_idle, rpm_redline);
	ai_shift_targetRPM = optimalShiftPoints[gear-1] + random_range(-shiftRange/2, shiftRange/2);
	show_debug_message("AI " + string(id) + " shiftTargetRPM: " + string(ai_shift_targetRPM));
}
else if (gear < maxGear && rpm >= rpm_redline && ai_shift_targetRPM > rpm_redline && alarm[0] <= 0) {
    // Convert delay to frames: map 0–1000 RPM overage to 0–30 frames
    var delayFrames = round(((ai_shift_targetRPM - rpm_redline) / (shiftRange / 2)) * 30);
    alarm[0] = max(1, delayFrames); // Ensure it's at least 1
	show_debug_message("AI " + string(id) + " shiftTargetRPM: " + string(ai_shift_targetRPM));
}
