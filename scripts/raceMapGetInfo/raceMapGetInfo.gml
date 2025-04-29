function raceMapGetInfo(_class,_index){
	infoArray = []
	switch _class{
		case 0:
			infoArray[1] = "Class D"
			infoArray[2] = ""
			infoArray[3] = "Mountain Vista"
			infoArray[4] = ""
			switch _index{
				case 0:
				infoArray[5] = "Lemon Race"
				infoArray[0] = true
				break;
				case 1:
				infoArray[5] = "Qualifier's Race"
				infoArray[0] = true
				break;
				case 2:
				infoArray[5] = "Rookie Drag"
				infoArray[0] = true
				break;
				case 3:
				infoArray[5] = "Fujiyama Circuit"
				infoArray[0] = true
				break;
				case 4:
				infoArray[5] = "Fast Family"
				infoArray[0] = true
				break;
			}
			
			if(_index > 4){
				infoArray[5] = "All Races Finished"
				infoArray[0] = false
			}
		break;
		case 1:
			infoArray[1] = "Class C"
			infoArray[2] = ""
			infoArray[3] = "Industrial Zone"
			infoArray[4] = ""
			if(_index < 5){
				infoArray[5] = "Win more races"
				infoArray[6] = "to unlock"
				infoArray[0] = false
			}
			switch _index{
				case 5:
				infoArray[5] = "Lemon Race"
				infoArray[0] = true
				break;
				case 6:
				infoArray[5] = "Qualifier's Race"
				infoArray[0] = true
				break;
				case 7:
				infoArray[5] = "Rookie Drag"
				infoArray[0] = true
				break;
				case 8:
				infoArray[5] = "Fujiyama Circuit"
				infoArray[0] = true
				break;
				case 9:
				infoArray[5] = "Qualifiers Race"
				infoArray[0] = true
				break;
			}
			
			if(_index > 9){
				infoArray[5] = "All Races Finished"
				infoArray[0] = false
			}
		break;
		case 2:
			infoArray[1] = "Class B"
			infoArray[2] = ""
			infoArray[3] = "Roppungi Party"
			infoArray[4] = ""
			if(_index < 10){
				infoArray[5] = "Win more races"
				infoArray[6] = "to unlock"
				infoArray[0] = false
			}
			switch _index{
				case 10:
				infoArray[5] = "Lemon Race"
				infoArray[0] = true
				break;
				case 11:
				infoArray[5] = "Qualifier's Race"
				infoArray[0] = true
				break;
				case 12:
				infoArray[5] = "Rookie Drag"
				infoArray[0] = true
				break;
				case 13:
				infoArray[5] = "Fujiyama Circuit"
				infoArray[0] = true
				break;
				case 14:
				infoArray[5] = "Qualifiers Race"
				infoArray[0] = true
				break;
			}
			
			if(_index > 14){
				infoArray[5] = "All Races Finished"
				infoArray[0] = false
			}
		
		break;
		case 3:
			infoArray[1] = "Class A"
			infoArray[2] = ""
			infoArray[3] = "The Docks"
			infoArray[4] = ""
			if(_index < 15){
				infoArray[5] = "Win more races"
				infoArray[6] = "to unlock"
				infoArray[0] = false
			}
			switch _index{
				case 15:
				infoArray[5] = "Lemon Race"
				infoArray[0] = true
				break;
				case 16:
				infoArray[5] = "Qualifier's Race"
				infoArray[0] = true
				break;
				case 17:
				infoArray[5] = "Rookie Drag"
				infoArray[0] = true
				break;
				case 18:
				infoArray[5] = "Fujiyama Circuit"
				infoArray[0] = true
				break;
				case 19:
				infoArray[5] = "Qualifiers Race"
				infoArray[0] = true
				break;
			}
			
			if(_index > 19){
				infoArray[5] = "All Races Finished"
				infoArray[0] = false
			}
		
		break;
		case 4:
			infoArray[1] = "Class S"
			infoArray[2] = ""
			infoArray[3] = "Kumagaya Strip"
			infoArray[4] = ""
			if(_index < 20){
				infoArray[5] = "Win more races"
				infoArray[6] = "to unlock"
				infoArray[0] = false
			}
			switch _index{
				case 20:
				infoArray[5] = "Lemon Race"
				infoArray[0] = true
				break;
				case 21:
				infoArray[5] = "Qualifier's Race"
				infoArray[0] = true
				break;
				case 22:
				infoArray[5] = "Rookie Drag"
				infoArray[0] = true
				break;
				case 23:
				infoArray[5] = "Fujiyama Circuit"
				infoArray[0] = true
				break;
				case 24:
				infoArray[5] = "Qualifiers Race"
				infoArray[0] = true
				break;
			}
			
			if(_index > 24){
				infoArray[5] = "All Races Finished"
				infoArray[0] = false
			}
		
		break;
	}
	return infoArray
}