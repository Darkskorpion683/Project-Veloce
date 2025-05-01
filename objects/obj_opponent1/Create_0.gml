randomise();
//visual initialization
xOffset = (sprite_get_width(sprite_index)/2)*visualScale

y -= yOffset
x += xOffset

wheelAngle = 0

// Get AI Difficulty based on class and level
var currentClass = global.AICLass;  
var currentLevel = global.AIDifficulty;

var statIndex = getRaceIndexFromClassLevel(currentClass, currentLevel);
var statList = getStatsFromLevel(statIndex);

topSpeed = statList[global.raceIndex].aITopSpeed
accelerationFactor = statList[global.raceIndex].aIAcceleration
weight = statList[global.raceIndex].aIWeight
shiftRange = 3000 - 933*statList[global.raceIndex].aILevel
wheelSpin = (weight / 100)
gearRatios = [4.0, 2.7, 1.9, 1.4, 1.1, 0.9];
maxGear = array_length(gearRatios);

rpm_idle = 1000;
rpm_redline = 8000;
rpm_per_speed_unit = 25

optimalShiftPoints = calculateOptimalShiftPoints(gearRatios, topSpeed, rpm_idle, rpm_redline, accelerationFactor,rpm_per_speed_unit)

ai_shift_targetRPM = optimalShiftPoints[gear-1] + random_range(-shiftRange/2, shiftRange/2);
show_debug_message("AI " + string(id) + " shiftTargetRPM: " + string(ai_shift_targetRPM));


