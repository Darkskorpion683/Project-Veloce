function upgradeHandler(_upgrade, _level) {
    var upgradeValue = 0
	_level = clamp(_level,0,3)
	switch (_upgrade) {
        case 0:
		//Top Speed
            switch (_level) {
                case 0:
                    upgradeValue = 140;
                    break;
                case 1:
                    upgradeValue = 160;
                    break;
                case 2:
                    upgradeValue = 180;
                    break;
                case 3:
                    upgradeValue = 220;
                    break;
            }
            break;

        case 1:
		//Acceleration Factor
            switch (_level) {
				
                case 0:
                    upgradeValue = .2;
                    break;
                case 1:
                    upgradeValue = .22;
                    break;
                case 2:
                    upgradeValue = .26;
                    break;
                case 3:
                    upgradeValue = .30;
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
                    upgradeValue = 3000;
                    break;
                case 1:
                    upgradeValue = 2000;
                    break;
                case 2:
                    upgradeValue = 1000;
                    break;
                case 3:
                    upgradeValue = 0;
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