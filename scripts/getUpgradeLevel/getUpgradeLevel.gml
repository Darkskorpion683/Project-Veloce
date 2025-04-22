function getUpgradeLevel(index) {
    switch (index) {
        case 1: return global.player_topSpeedLevel;
        case 2: return global.player_accelerationLevel;
        case 3: return 0;
        case 4: return 0;
        case 5: return global.player_nitrousLevel;
    }
}