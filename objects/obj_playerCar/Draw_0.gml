depth = -999
draw_sprite_ext(global.player_currentCar.color[global.player_carColor].spr, 0, x, y, 1, 1, 0, c_white, 1);
depth = -1000
//left wheel
draw_sprite_ext(spr_defaultWheel, 0, x-global.player_currentCar.leftWheel_x, y+global.player_currentCar.y_offset, 1, 1, wheelAngle, c_white, 1);
//right wheel
draw_sprite_ext(spr_defaultWheel, 0, x+global.player_currentCar.rightWheel_x, y+global.player_currentCar.y_offset, 1, 1, wheelAngle, c_white, 1);