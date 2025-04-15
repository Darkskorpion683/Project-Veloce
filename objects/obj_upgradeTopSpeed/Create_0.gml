upgrade_level = 0

// Create upgrade lights
upgradeLight1 = instance_create_layer(obj_upgradeTopSpeed.x, obj_upgradeTopSpeed.y + (obj_upgradeTopSpeed.sprite_height + 32), "Instances", obj_upgradeLight)
upgradeLight2 = instance_create_layer(obj_upgradeTopSpeed.x + 64, obj_upgradeTopSpeed.y + (obj_upgradeTopSpeed.sprite_height + 32), "Instances", obj_upgradeLight)
upgradeLight3 = instance_create_layer(obj_upgradeTopSpeed.x + 128, obj_upgradeTopSpeed.y + (obj_upgradeTopSpeed.sprite_height + 32), "Instances", obj_upgradeLight)
upgradeLight4 = instance_create_layer(obj_upgradeTopSpeed.x + 192, obj_upgradeTopSpeed.y + (obj_upgradeTopSpeed.sprite_height + 32), "Instances", obj_upgradeLight)