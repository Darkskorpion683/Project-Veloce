gearRatios = [4.0, 2.7, 1.9, 1.4, 1.1, 0.9];
maxGear = array_length(gearRatios);

rpm_idle = 1000;
rpm_redline = 8000;
rpm_per_speed_unit = rpm_redline / (60 * gearRatios[maxGear - 1]); // adjust to your top speed

accelerationFactor = 0.3;
testRPM_step = 100;
global.optimalShiftPoints = [];

currentGear = 1;
startTestRPM = 3000;

run_state = "test"; // states: "test", "done"