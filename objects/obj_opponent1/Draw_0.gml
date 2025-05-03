depth = layerDepth + 1
draw_sprite_ext(sprite_index, 0, x, y, visualScale, visualScale, 0, c_white, 1);
depth = layerDepth
//left wheel
draw_sprite_ext(spr_defaultWheel, 0, x-currentCar.leftWheel_x*visualScale, y+currentCar.y_offset*visualScale, visualScale, visualScale, wheelAngle, c_white, 1);
//right wheel
draw_sprite_ext(spr_defaultWheel, 0, x+currentCar.rightWheel_x*visualScale, y+currentCar.y_offset*visualScale, visualScale, visualScale, wheelAngle, c_white, 1);
