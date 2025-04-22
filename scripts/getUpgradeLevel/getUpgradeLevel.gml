function getUpgradeLevel(index) {
    switch (index) {
        case 0: return global.player_topSpeedLevel;
        case 1: return global.player_accelerationLevel;
        case 2: return global.player_transmissionLevel;
        case 3: return global.player_weightLevel;
        case 4: return global.player_nitrousLevel;
    }
}