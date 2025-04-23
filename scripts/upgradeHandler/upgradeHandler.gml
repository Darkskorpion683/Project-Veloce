function upgradeHandler(_selection, _level) {
    switch (_selection) {
        case 0:
            switch (_level) {
                case 0:
                    global.player_topSpeed = 140;
                    break;
                case 1:
                    global.player_topSpeed = 160;
                    break;
                case 2:
                    global.player_topSpeed = 180;
                    break;
                case 3:
                    global.player_topSpeed = 220;
                    break;
            }
			global.player_topSpeedLevel = _level
            break;

        case 1:
            switch (_level) {
                case 0:
                    global.player_accelerationFactor = 0.10;
                    break;
                case 1:
                    global.player_accelerationFactor = 0.14;
                    break;
                case 2:
                    global.player_accelerationFactor = 0.18;
                    break;
                case 3:
                    global.player_accelerationFactor = 0.20;
                    break;
            }
			global.player_accelerationLevel = _level
            break;

        case 2:
            // Placeholder for future upgrade logic
			global.player_transmissionLevel = _level
            break;

        case 3:
			switch (_level) {
                case 0:
                    global.player_weight = 3000;
                    break;
                case 1:
                    global.player_weight = 2000;
                    break;
                case 2:
                    global.player_weight = 1000;
                    break;
                case 3:
                    global.player_weight = 0;
                    break;
            }
			global.player_weightLevel = _level
            break;

        case 4:
            switch (_level) {
                case 0:
                    global.player_nitrous =.6;
                    break;
                case 1:
                    global.player_nitrous = .7;
                    break;
                case 2:
                    global.player_nitrous = .8;
                    break;
                case 3:
                    global.player_nitrous = .9;
                    break;
            }
			global.player_nitrousLevel = _level
            break;
    }
}