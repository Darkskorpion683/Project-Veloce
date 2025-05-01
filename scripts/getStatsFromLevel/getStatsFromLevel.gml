// Should ensure that race.level indexes correctly
function getRaceIndexFromClassLevel(_class, _level) {
function getRaceIndexFromClassLevel(_class, _level) {
    if (typeof(_class) != typeof("") || _level < 1 || _level > 4) {
        show_debug_message("Invalid class or level in getRaceIndexFromClassLevel");
        return -1;
    }

    var classOffsets = {
        "D": 0,
        "C": 5,
        "B": 10,
        "A": 15,
        "S": 20
    };

    if (is_undefined(classOffsets[_class])) {
        show_debug_message("Invalid class key: " + string(_class));
        return -1;
    }

    return classOffsets[_class] + (_level - 1);
}
;
}


function getStatsFromLevel(_index){

	classDcars = getClassCars("D")
	classCcars = getClassCars("C")
	classBcars = getClassCars("B")
	classAcars = getClassCars("A")
	classScars = getClassCars("S")
	
	
	raceStats = [
		//Class D
		//1
		{
			car : classDcars[irandom_range(0,array_length(classDcars)-1)],
			aITopSpeed : upgradeHandler(0,0),
			aIAcceleration : upgradeHandler(1,0),
			aITransmission : upgradeHandler(2,0),
			aIWeight : upgradeHandler(3,0),
			aINitrous : upgradeHandler(4,0),
			aILevel : 0
		},
		//2
		{
			car : classDcars[irandom_range(0,array_length(classDcars)-1)],
			aITopSpeed : upgradeHandler(0,irandom_range(0,1)),
			aIAcceleration : upgradeHandler(1,irandom_range(0,1)),
			aITransmission : upgradeHandler(2,irandom_range(0,1)),
			aIWeight : upgradeHandler(3,irandom_range(0,1)),
			aINitrous : upgradeHandler(4,irandom_range(0,1)),
			aILevel : irandom_range(0,1)
		},
		//3
		{
			car : classDcars[irandom_range(0,array_length(classDcars)-1)],
			aITopSpeed : upgradeHandler(0,irandom_range(1,2)),
			aIAcceleration : upgradeHandler(1,irandom_range(1,2)),
			aITransmission : upgradeHandler(2,irandom_range(1,2)),
			aIWeight : upgradeHandler(3,irandom_range(1,2)),
			aINitrous : upgradeHandler(4,irandom_range(1,2)),
			aILevel : irandom_range(1,2)
		},
		//4
		{
			car : classDcars[irandom_range(0,array_length(classDcars)-1)],
			aITopSpeed : upgradeHandler(0,2),
			aIAcceleration : upgradeHandler(1,2),
			aITransmission : upgradeHandler(2,2),
			aIWeight : upgradeHandler(3,2),
			aINitrous : upgradeHandler(4,2),
			aILevel : 2
		},
		//5
		{
			car : classDcars[irandom_range(0,array_length(classDcars)-1)],
			aITopSpeed : upgradeHandler(0,irandom_range(2,3)),
			aIAcceleration : upgradeHandler(1,irandom_range(2,3)),
			aITransmission : upgradeHandler(2,irandom_range(2,3)),
			aIWeight : upgradeHandler(3,irandom_range(2,3)),
			aINitrous : upgradeHandler(4,irandom_range(2,3)),
			aILevel : irandom_range(2,3)
		},
		//Class C
		//6
		{
			car : classCcars[irandom_range(0,array_length(classCcars)-1)],
			aITopSpeed : upgradeHandler(0,0),
			aIAcceleration : upgradeHandler(1,0),
			aITransmission : upgradeHandler(2,0),
			aIWeight : upgradeHandler(3,0),
			aINitrous : upgradeHandler(4,0),
			aILevel : 0
		},
		//7
		{
			car : classCcars[irandom_range(0,array_length(classCcars)-1)],
			aITopSpeed : upgradeHandler(0,irandom_range(0,1)),
			aIAcceleration : upgradeHandler(1,irandom_range(0,1)),
			aITransmission : upgradeHandler(2,irandom_range(0,1)),
			aIWeight : upgradeHandler(3,irandom_range(0,1)),
			aINitrous : upgradeHandler(4,irandom_range(0,1)),
			aILevel : irandom_range(0,1)
		},
		//8
		{
			car : classCcars[irandom_range(0,array_length(classCcars)-1)],
			aITopSpeed : upgradeHandler(0,irandom_range(1,2)),
			aIAcceleration : upgradeHandler(1,irandom_range(1,2)),
			aITransmission : upgradeHandler(2,irandom_range(1,2)),
			aIWeight : upgradeHandler(3,irandom_range(1,2)),
			aINitrous : upgradeHandler(4,irandom_range(1,2)),
			aILevel : irandom_range(1,2)
		},
		//9
		{
			car : classCcars[irandom_range(0,array_length(classCcars)-1)],
			aITopSpeed : upgradeHandler(0,2),
			aIAcceleration : upgradeHandler(1,2),
			aITransmission : upgradeHandler(2,2),
			aIWeight : upgradeHandler(3,2),
			aINitrous : upgradeHandler(4,2),
			aILevel : 2
		},
		//10
		{
			car : classCcars[irandom_range(0,array_length(classCcars)-1)],
			aITopSpeed : upgradeHandler(0,irandom_range(2,3)),
			aIAcceleration : upgradeHandler(1,irandom_range(2,3)),
			aITransmission : upgradeHandler(2,irandom_range(2,3)),
			aIWeight : upgradeHandler(3,irandom_range(2,3)),
			aINitrous : upgradeHandler(4,irandom_range(2,3)),
			aILevel : irandom_range(2,3)
		},
		//Class B
		//11
		{
			car : classBcars[irandom_range(0,array_length(classBcars)-1)],
			aITopSpeed : upgradeHandler(0,0),
			aIAcceleration : upgradeHandler(1,0),
			aITransmission : upgradeHandler(2,0),
			aIWeight : upgradeHandler(3,0),
			aINitrous : upgradeHandler(4,0),
			aILevel : 0
		},
		//12
		{
			car : classBcars[irandom_range(0,array_length(classBcars)-1)],
			aITopSpeed : upgradeHandler(0,irandom_range(0,1)),
			aIAcceleration : upgradeHandler(1,irandom_range(0,1)),
			aITransmission : upgradeHandler(2,irandom_range(0,1)),
			aIWeight : upgradeHandler(3,irandom_range(0,1)),
			aINitrous : upgradeHandler(4,irandom_range(0,1)),
			aILevel : irandom_range(0,1)
		},
		//13
		{
			car : classBcars[irandom_range(0,array_length(classBcars)-1)],
			aITopSpeed : upgradeHandler(0,irandom_range(1,2)),
			aIAcceleration : upgradeHandler(1,irandom_range(1,2)),
			aITransmission : upgradeHandler(2,irandom_range(1,2)),
			aIWeight : upgradeHandler(3,irandom_range(1,2)),
			aINitrous : upgradeHandler(4,irandom_range(1,2)),
			aILevel : irandom_range(1,2)
		},
		//14
		{
			car : classBcars[irandom_range(0,array_length(classBcars)-1)],
			aITopSpeed : upgradeHandler(0,2),
			aIAcceleration : upgradeHandler(1,2),
			aITransmission : upgradeHandler(2,2),
			aIWeight : upgradeHandler(3,2),
			aINitrous : upgradeHandler(4,2),
			aILevel : 2
		},
		//15
		{
			car : classBcars[irandom_range(0,array_length(classBcars)-1)],
			aITopSpeed : upgradeHandler(0,irandom_range(2,3)),
			aIAcceleration : upgradeHandler(1,irandom_range(2,3)),
			aITransmission : upgradeHandler(2,irandom_range(2,3)),
			aIWeight : upgradeHandler(3,irandom_range(2,3)),
			aINitrous : upgradeHandler(4,irandom_range(2,3)),
			aILevel : irandom_range(2,3)
		},
		//Class A
		//16
		{
			car : classAcars[irandom_range(0,array_length(classAcars)-1)],
			aITopSpeed : upgradeHandler(0,0),
			aIAcceleration : upgradeHandler(1,0),
			aITransmission : upgradeHandler(2,0),
			aIWeight : upgradeHandler(3,0),
			aINitrous : upgradeHandler(4,0),
			aILevel : 0
		},
		//17
		{
			car : classAcars[irandom_range(0,array_length(classAcars)-1)],
			aITopSpeed : upgradeHandler(0,irandom_range(0,1)),
			aIAcceleration : upgradeHandler(1,irandom_range(0,1)),
			aITransmission : upgradeHandler(2,irandom_range(0,1)),
			aIWeight : upgradeHandler(3,irandom_range(0,1)),
			aINitrous : upgradeHandler(4,irandom_range(0,1)),
			aILevel : irandom_range(0,1)
		},
		//18
		{
			car : classAcars[irandom_range(0,array_length(classAcars)-1)],
			aITopSpeed : upgradeHandler(0,irandom_range(1,2)),
			aIAcceleration : upgradeHandler(1,irandom_range(1,2)),
			aITransmission : upgradeHandler(2,irandom_range(1,2)),
			aIWeight : upgradeHandler(3,irandom_range(1,2)),
			aINitrous : upgradeHandler(4,irandom_range(1,2)),
			aILevel : irandom_range(1,2)
		},
		//19
		{
			car : classAcars[irandom_range(0,array_length(classAcars)-1)],
			aITopSpeed : upgradeHandler(0,2),
			aIAcceleration : upgradeHandler(1,2),
			aITransmission : upgradeHandler(2,2),
			aIWeight : upgradeHandler(3,2),
			aINitrous : upgradeHandler(4,2),
			aILevel : 2
		},
		//20
		{
			car : classAcars[irandom_range(0,array_length(classAcars)-1)],
			aITopSpeed : upgradeHandler(0,irandom_range(2,3)),
			aIAcceleration : upgradeHandler(1,irandom_range(2,3)),
			aITransmission : upgradeHandler(2,irandom_range(2,3)),
			aIWeight : upgradeHandler(3,irandom_range(2,3)),
			aINitrous : upgradeHandler(4,irandom_range(2,3)),
			aILevel : irandom_range(2,3)
		},
		//Class S
		//21
		{
			car : classScars[irandom_range(0,array_length(classScars)-1)],
			aITopSpeed : upgradeHandler(0,0),
			aIAcceleration : upgradeHandler(1,0),
			aITransmission : upgradeHandler(2,0),
			aIWeight : upgradeHandler(3,0),
			aINitrous : upgradeHandler(4,0),
			aILevel : 0
		},
		//22
		{
			car : classScars[irandom_range(0,array_length(classScars)-1)],
			aITopSpeed : upgradeHandler(0,irandom_range(0,1)),
			aIAcceleration : upgradeHandler(1,irandom_range(0,1)),
			aITransmission : upgradeHandler(2,irandom_range(0,1)),
			aIWeight : upgradeHandler(3,irandom_range(0,1)),
			aINitrous : upgradeHandler(4,irandom_range(0,1)),
			aILevel : irandom_range(0,1)
		},
		//23
		{
			car : classScars[irandom_range(0,array_length(classScars)-1)],
			aITopSpeed : upgradeHandler(0,irandom_range(1,2)),
			aIAcceleration : upgradeHandler(1,irandom_range(1,2)),
			aITransmission : upgradeHandler(2,irandom_range(1,2)),
			aIWeight : upgradeHandler(3,irandom_range(1,2)),
			aINitrous : upgradeHandler(4,irandom_range(1,2)),
			aILevel : irandom_range(1,2)
		},
		//24
		{
			car : classScars[irandom_range(0,array_length(classScars)-1)],
			aITopSpeed : upgradeHandler(0,2),
			aIAcceleration : upgradeHandler(1,2),
			aITransmission : upgradeHandler(2,2),
			aIWeight : upgradeHandler(3,2),
			aINitrous : upgradeHandler(4,2),
			aILevel : 2
		},
		//25
		{
			car : classScars[irandom_range(0,array_length(classScars)-1)],
			aITopSpeed : upgradeHandler(0,irandom_range(2,3)),
			aIAcceleration : upgradeHandler(1,irandom_range(2,3)),
			aITransmission : upgradeHandler(2,irandom_range(2,3)),
			aIWeight : upgradeHandler(3,irandom_range(2,3)),
			aINitrous : upgradeHandler(4,irandom_range(2,3)),
			aILevel : irandom_range(2,3)
		},
		
	]
	return raceStats
}