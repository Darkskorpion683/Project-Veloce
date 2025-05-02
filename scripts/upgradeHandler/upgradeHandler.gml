function upgradeHandler(_upgrade, _level) {
    var upgradeValue = 0
	_level = clamp(_level,0,3)
	switch (_upgrade) {
        case 0:
		//Top Speed
            switch (_level) {
                case 0:
                    upgradeValue = 0;
                    break;
                case 1:
                    upgradeValue = 10;
                    break;
                case 2:
                    upgradeValue = 20;
                    break;
                case 3:
                    upgradeValue = 30;
                    break;
            }
            break;

        case 1:
		//Acceleration Factor
            switch (_level) {
				
                case 0:
                    upgradeValue = 0;
                    break;
                case 1:
                    upgradeValue = .1;
                    break;
                case 2:
                    upgradeValue = .14;
                    break;
                case 3:
                    upgradeValue = .18;
                    break;
            }
            break;

        case 2:
        // Transmission Upgrade
			switch (_level) {
				
                case 0:
                    upgradeValue = [4.0, 2.7, 1.9, 1.4, 1.1, 0.9];
                    break;
                case 1:
                    upgradeValue = [3.8, 2.5, 1.8, 1.3, 1.05, 0.85];
                    break;
                case 2:
                    upgradeValue = [3.6, 2.3, 1.7, 1.25, 1.0, 0.8];
                    break;
                case 3:
                    upgradeValue = [3.4, 2.1, 1.6, 1.2, 0.95, 0.75];
                    break;
            }
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