upgrade_level = 0

// Create upgrade lights
upgradeLight1 = instance_create_layer(obj_upgradeAcceleration.x, obj_upgradeAcceleration.y + (obj_upgradeAcceleration.sprite_height + 32), "Instances", obj_upgradeLight)
upgradeLight2 = instance_create_layer(obj_upgradeAcceleration.x + 64, obj_upgradeAcceleration.y + (obj_upgradeAcceleration.sprite_height + 32), "Instances", obj_upgradeLight)
upgradeLight3 = instance_create_layer(obj_upgradeAcceleration.x + 128, obj_upgradeAcceleration.y + (obj_upgradeAcceleration.sprite_height + 32), "Instances", obj_upgradeLight)
upgradeLight4 = instance_create_layer(obj_upgradeAcceleration.x + 192, obj_upgradeAcceleration.y + (obj_upgradeAcceleration.sprite_height + 32), "Instances", obj_upgradeLight)