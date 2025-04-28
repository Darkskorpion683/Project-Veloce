pldepth = -1000
layer_depth("Instances", pldepth)
draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
gearRatios = [4.0, 2.7, 1.9, 1.4, 1.1, 0.9]; 
maxGear = array_length(gearRatios);
rpm_idle = 1000;
rpm_redline = 8000;
rpm_per_speed_unit = 50
wheelAngle = 0
optimalShiftPoints = calculateOptimalShiftPoints(gearRatios, topSpeed, rpm_idle, rpm_redline, accelerationFactor,rpm_per_speed_unit)

// Creating the variables that can be upgrades and assigning to global value
accelerationFactor = global.player_accelerationFactor
topSpeed = global.player_topSpeed
weight = global.player_weight
nitrous = global.player_nitrous
transmission = global.player_transmission
sprite_index = global.player_currentCar.color[0].spr

nitrous_used=false;
nitrous_activated=false;
prenitrous_acceleration = 0;
nitrousFlame = instance_create_layer(obj_playerCar.x - 40, obj_playerCar.y + 12, "Instances", obj_nitrousFlame);
instance_deactivate_object(nitrousFlame)

wheelSpin = (weight / 100)
stall = false

// Create smoke
smoke =	instance_create_layer(x - 150, y - 60, "Instances", obj_smoke)
instance_deactivate_object(smoke)


