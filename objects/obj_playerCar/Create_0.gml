pldepth = -1000
layer_depth("Instances", pldepth)
gearRatios = [4.0, 2.7, 1.9, 1.4, 1.1, 0.9]; // More realistic ratios
maxGear = array_length(gearRatios);

rpm_idle = 1000;
rpm_redline = 8000;
rpm_per_speed_unit = 50


optimalShiftPoints = calculateOptimalShiftPoints(gearRatios, topSpeed, rpm_idle, rpm_redline, accelerationFactor,rpm_per_speed_unit)

// Creating the variables that can be upgrades and assigning to global value
accelerationFactor = global.player_accelerationFactor
topSpeed = global.player_topSpeed
weight = global.player_weight
nitrous = global.player_nitrous
transmission = global.player_transmission