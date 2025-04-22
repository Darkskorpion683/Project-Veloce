function upgradeHandler(_selection, _level) {
    switch (_selection) {
        case 0:
            switch (_level) {
                case 0:
                    global.player_topSpeed = 140;
					global.player_topSpeedLevel = 1
                    break;
                case 1:
                    global.player_topSpeed = 160;
					global.player_topSpeedLevel = 2
                    break;
                case 2:
                    global.player_topSpeed = 180;
					global.player_topSpeedLevel = 3
                    break;
                case 3:
                    global.player_topSpeed = 220;
					global.player_topSpeedLevel = 4
                    break;
            }
            break;

        case 1:
            switch (_level) {
                case 0:
                    global.player_accelerationFactor = 0.10;
					global.player_accelerationLevel = 1
                    break;
                case 1:
                    global.player_accelerationFactor = 0.14;
					global.player_accelerationLevel = 2
                    break;
                case 2:
                    global.player_accelerationFactor = 0.18;
					global.player_accelerationLevel = 3
                    break;
                case 3:
                    global.player_accelerationFactor = 0.20;
					global.player_accelerationLevel = 4
                    break;
            }
            break;

        case 2:
            // Placeholder for future upgrade logic
            break;

        case 3:
            // Placeholder for future upgrade logic
            break;

        case 4:
            switch (_level) {
                case 0:
                    global.player_nitrous = 20;
					global.player_nitrousLevel = 1
                    break;
                case 1:
                    global.player_nitrous = 30;
					global.player_nitrousLevel = 2
                    break;
                case 2:
                    global.player_nitrous = 45;
					global.player_nitrousLevel = 3
                    break;
                case 3:
                    global.player_nitrous =60;
					global.player_nitrousLevel = 4
                    break;
            }
            break;
    }
}