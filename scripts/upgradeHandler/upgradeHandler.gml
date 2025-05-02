function upgradeHandler(_upgrade, _level) {
    var upgradeValue = 0
	_level = clamp(_level,0,3)
	switch (_upgrade) {
        case 0:
		//Top Speed
            switch (_level) {
                case 0:
                    upgradeValue = 40;
                    break;
                case 1:
                    upgradeValue = 50;
                    break;
                case 2:
                    upgradeValue = 60;
                    break;
                case 3:
                    upgradeValue = 70;
                    break;
            }
            break;

        case 1:
		//Acceleration Factor
            switch (_level) {
				
                case 0:
                    upgradeValue = .3;
                    break;
                case 1:
                    upgradeValue = .32;
                    break;
                case 2:
                    upgradeValue = .36;
                    break;
                case 3:
                    upgradeValue = .40;
                    break;
            }
            break;

        case 2:
        // Transmission Upgrade
            break;

        case 3:
		//Weight
			switch (_level) {
                case 0:
                    upgradeValue = 4000;
                    break;
                case 1:
                    upgradeValue = 3000;
                    break;
                case 2:
                    upgradeValue = 2000;
                    break;
                case 3:
                    upgradeValue = 1000;
                    break;
            }
            break;

        case 4:
		//Nitrous
            switch (_level) {
                case 0:
                    upgradeValue =.6;
                    break;
                case 1:
                    upgradeValue = .7;
                    break;
                case 2:
                    upgradeValue = .8;
                    break;
                case 3:
                    upgradeValue = .9;
                    break;
            }
            break;
    }
	return upgradeValue
}