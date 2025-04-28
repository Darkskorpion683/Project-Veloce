selectedCar = global.player_currentCar
classDcars = []
classCcars = []
classBcars = []
classAcars = []
classScars = []

for(i = 0;i < array_length(global.carRoster);i++){
	thisCar = global.carRoster[i]
	if thisCar.class == "D"{
		classDcars[array_length(classDcars)] = thisCar
	}
	if thisCar.class == "C"{
		classCcars[array_length(classCcars)] = thisCar
	}
	if thisCar.class == "B"{
		classBcars[array_length(classBcars)] = thisCar
	}
	if thisCar.class == "A"{
		classAcars[array_length(classAcars)] = thisCar
	}
	if thisCar.class == "S"{
		classScars[array_length(classScars)] = thisCar
	}
}

carClasses = [
	classDcars,
	classCcars,
	classBcars,
	classAcars,
	classScars
	]
