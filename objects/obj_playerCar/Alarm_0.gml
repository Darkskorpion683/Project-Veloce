if (nitrous_activated) {
	accelerationFactor -= nitrous
	acceleration = prenitrous_acceleration
    nitrous_activated = false;
	instance_destroy(obj_nitrousFlame)
}