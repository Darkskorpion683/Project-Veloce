function getClassCars(_class){
	oldCars = global.carRoster
	newCars = []
	var j = 0
	for(i=0;i<array_length(oldCars);i++){
		if oldCars[i].class == _class{
			newCars[j] = oldCars[i]
			j++
		}
	}
	return newCars
	
}