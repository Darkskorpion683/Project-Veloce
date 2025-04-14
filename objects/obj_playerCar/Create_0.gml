depth = -1000
gearRatios = [4.0, 2.7, 1.9, 1.4, 1.1, 0.9]; // More realistic ratios
maxGear = array_length(gearRatios);

rpm_idle = 1000;
rpm_redline = 8000;
rpm_per_speed_unit = 50


optimalShiftPoints = calculateOptimalShiftPoints(gearRatios, topSpeed, rpm_idle, rpm_redline, accelerationFactor,rpm_per_speed_unit)
