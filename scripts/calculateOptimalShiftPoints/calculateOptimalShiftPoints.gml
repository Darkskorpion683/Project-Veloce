function calculateOptimalShiftPoints(gearRatios, topSpeed, rpm_idle, rpm_redline, accelerationFactor,rpm_per_speed_unit) {
    var shiftPoints = [];
    var maxGear = array_length(gearRatios);
    var step = 50; // resolution

    for (var gear = 1; gear < maxGear; gear++) {
        var currentRatio = gearRatios[gear - 1];
        var nextRatio = gearRatios[gear];

        var foundShift = false;
        var bestShiftRPM = rpm_redline; // default fallback

        for (var rpm = rpm_idle; rpm <= rpm_redline; rpm += step) {
            // speed in current gear at this rpm
            var thisSpeed = rpm / (currentRatio * rpm_per_speed_unit);
            // resulting rpm if shifted to next gear at same speed
            var rpm_next = thisSpeed * nextRatio * rpm_per_speed_unit;

            if (rpm_next < rpm_idle || rpm_next > rpm_redline) continue;

            var torque_current = getTorqueFromRPM(rpm);
            var torque_next = getTorqueFromRPM(rpm_next);

            var accel_current = (torque_current / currentRatio) * accelerationFactor;
            var accel_next = (torque_next / nextRatio) * accelerationFactor;

            if (accel_next >= accel_current) {
                bestShiftRPM = rpm;
                foundShift = true;
                break;
            }
        }

        array_push(shiftPoints, bestShiftRPM);
    }

    // Add 6th gear dummy value (we don't shift from it)
    array_push(shiftPoints, 0);

    return shiftPoints;
}