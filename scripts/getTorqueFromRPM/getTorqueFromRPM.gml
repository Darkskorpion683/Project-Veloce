function getTorqueFromRPM(_rpm) {
    var peak_rpm = 6000;
    var curve = 1 - abs(_rpm - peak_rpm) / peak_rpm;
    return power(max(0, curve), 1.2);
}