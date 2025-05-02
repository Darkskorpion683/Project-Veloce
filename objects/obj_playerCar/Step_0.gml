// Wheel Spin Out State
if wheelSpin > 0 {
	instance_activate_object(smoke)
	stall = true
	alarm[1] = wheelSpin
	wheelSpin = 0
}

if stall == false {
instance_deactivate_object(smoke)


// --- Get current gear ratio ---
var ratio = gearRatios[gear - 1];
rpm = currentSpeed * ratio * rpm_per_speed_unit;
rpm = clamp(rpm, rpm_idle, rpm_redline);

// --- Calculate RPM from speed and gear ratio ---
rpm = currentSpeed * ratio * rpm_per_speed_unit;
rpm = clamp(rpm, rpm_idle, rpm_redline);

var torque = getTorqueFromRPM(rpm);

acceleration = torque / ratio * accelerationFactor;

currentSpeed += acceleration;
currentSpeed = clamp(currentSpeed, 0, topSpeed);

x += currentSpeed / 5;
wheelAngle = (wheelAngle - (currentSpeed));
if (wheelAngle < 0){
	wheelAngle += 360;
}
wheelAngle = wheelAngle mod 360;

// --- Shift up, adjust RPM based on new gear ratio ---
if (gear < maxGear && keyboard_check_pressed(ord("E"))) {
    gear += 1;
    var newRatio = gearRatios[gear - 1];
	rpm = clamp(currentSpeed * newRatio * rpm_per_speed_unit, rpm_idle, rpm_redline);
}

if (gear > 1 && keyboard_check_pressed(ord("Q"))) {
    gear -= 1;

    var newRatio = gearRatios[gear - 1];

    var estimatedRPM = currentSpeed * newRatio * rpm_per_speed_unit;

    rpm = clamp(estimatedRPM, rpm_idle, rpm_redline);
}

// Nitrous Activation Check
if (!nitrous_used && keyboard_check_pressed(vk_shift)) {
    nitrous_activated = true;
	instance_activate_object(nitrousFlame);
	audio_play_sound(snd_nitro,2,false)
	prenitrous_acceleration = acceleration
    accelerationFactor += nitrous;
    nitrous_used = true;
    alarm[0] = 20;
	
}

// Nitrous Flame tracking exhaust pipe
if instance_exists(nitrousFlame) {
	nitrousFlame.x = obj_playerCar.x - 69 + currentSpeed/5
}

}

     
	
	






