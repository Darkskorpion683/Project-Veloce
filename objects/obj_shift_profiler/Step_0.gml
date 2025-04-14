if (run_state == "test") {
    for (var gear = 1; gear < maxGear; gear++) {
        var bestTime = 999999;
        var bestRPM = -1;

        for (var shiftRPM = startTestRPM; shiftRPM <= rpm_redline; shiftRPM += testRPM_step) {
            // Reset simulation state
            var rpm = rpm_idle;
            var thisSpeed = 0;
            var currentGear = gear;
            var timeSteps = 0;

            // Calculate the target speed to reach in the *next gear*
            var targetSpeed = 120 * ((gear + 1) / maxGear); // same topSpeed fraction as your real gear range

            while (thisSpeed < targetSpeed && timeSteps < 2000) {
                var ratio = gearRatios[currentGear - 1];
                rpm = clamp(thisSpeed * ratio * rpm_per_speed_unit, rpm_idle, rpm_redline);
                var torque = getTorqueFromRPM(rpm);
                var acceleration = (torque / ratio) * accelerationFactor;
                thisSpeed += acceleration;

                if (currentGear == gear && rpm >= shiftRPM) {
                    currentGear += 1; // simulate shift
                }

                timeSteps++;
            }

            if (timeSteps < bestTime) {
                bestTime = timeSteps;
                bestRPM = shiftRPM;
            }
        }

        global.optimalShiftPoints[gear - 1] = bestRPM;
    }

    run_state = "done";
}

if (run_state == "done") {
    for (var i = 0; i < array_length(global.optimalShiftPoints); i++) {
        show_debug_message("Gear " + string(i + 1) + ": " + string(global.optimalShiftPoints[i]) + " RPM");
    }
}