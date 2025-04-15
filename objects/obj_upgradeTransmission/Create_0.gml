upgrade_level = 0

// Create upgrade lights
upgradeLight1 = instance_create_layer(obj_upgradeTransmission.x, obj_upgradeTransmission.y + (obj_upgradeTransmission.sprite_height + 32), "Instances", obj_upgradeLight)
upgradeLight2 = instance_create_layer(obj_upgradeTransmission.x + 64, obj_upgradeTransmission.y + (obj_upgradeTransmission.sprite_height + 32), "Instances", obj_upgradeLight)
upgradeLight3 = instance_create_layer(obj_upgradeTransmission.x + 128, obj_upgradeTransmission.y + (obj_upgradeTransmission.sprite_height + 32), "Instances", obj_upgradeLight)
upgradeLight4 = instance_create_layer(obj_upgradeTransmission.x + 192, obj_upgradeTransmission.y + (obj_upgradeTransmission.sprite_height + 32), "Instances", obj_upgradeLight)