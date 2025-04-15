upgrade_level = 0

// Create upgrade lights
upgradeLight1 = instance_create_layer(obj_upgradeWeight.x, obj_upgradeWeight.y + (obj_upgradeWeight.sprite_height + 32), "Instances", obj_upgradeLight)
upgradeLight2 = instance_create_layer(obj_upgradeWeight.x + 64, obj_upgradeWeight.y + (obj_upgradeWeight.sprite_height + 32), "Instances", obj_upgradeLight)
upgradeLight3 = instance_create_layer(obj_upgradeWeight.x + 128, obj_upgradeWeight.y + (obj_upgradeWeight.sprite_height + 32), "Instances", obj_upgradeLight)
upgradeLight4 = instance_create_layer(obj_upgradeWeight.x + 192, obj_upgradeWeight.y + (obj_upgradeWeight.sprite_height + 32), "Instances", obj_upgradeLight)