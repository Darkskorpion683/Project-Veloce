barProgress = clamp(barProgress,0,3)
if global.player_currentCar.class == "D" then costMultiplier = 1
if global.player_currentCar.class == "C" then costMultiplier = 10
if global.player_currentCar.class == "B" then costMultiplier = 100
if global.player_currentCar.class == "A" or global.player_currentCar.class == "S" then costMultiplier = 1000
