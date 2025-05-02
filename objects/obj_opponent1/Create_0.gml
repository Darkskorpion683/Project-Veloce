randomise();

var currentClass = global.AICLass;  
var currentLevel = global.AIDifficulty;

var statIndex = getRaceIndexFromClassLevel(currentClass, currentLevel);
var statList = getStatsFromLevel(statIndex);

currentCar = statList[global.raceIndex].car
sprite_index = currentCar.color[irandom_range(0,3)].spr
xOffset = (sprite_get_width(sprite_index)/2)*(1-visualScale)

x += xOffset

wheelAngle = 0

// Get AI Difficulty based on class and level

topSpeed = currentCar.topSpeed + statList[global.raceIndex].aITopSpeed
accelerationFactor = currentCar.baseAcceleration + statList[global.raceIndex].aIAcceleration
weight = currentCar.weight + statList[global.raceIndex].aIWeight
shiftRange = 3000 - 933*statList[global.raceIndex].aILevel
wheelSpin = (weight / 100)
gearRatios = statList[global.raceIndex].aITransmission
maxGear = array_length(gearRatios);

rpm_idle = 1000;
rpm_redline = 8000;
rpm_per_speed_unit = 65

optimalShiftPoints = calculateOptimalShiftPoints(gearRatios, topSpeed, rpm_idle, rpm_redline, accelerationFactor,rpm_per_speed_unit)

ai_shift_targetRPM = optimalShiftPoints[gear-1] + random_range(-shiftRange/2, shiftRange/2);
show_debug_message("AI " + string(id) + " shiftTargetRPM: " + string(ai_shift_targetRPM));


