depth = -999
draw_sprite_ext(global.player_currentCar.color[0].spr, 0, x, y, 1, 1, 0, c_white, 1);
depth = -1000
//left wheel
draw_sprite_ext(spr_defaultWheel, 0, x-37, y+9, 1, 1, wheelAngle, c_white, 1);
//right wheel
draw_sprite_ext(spr_defaultWheel, 0, x+39, y+9, 1, 1, wheelAngle, c_white, 1);