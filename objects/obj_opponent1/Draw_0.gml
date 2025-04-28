depth = layerDepth + 1
draw_sprite_ext(sprite_index, 0, x, y, visualScale, visualScale, 0, c_white, 1);
depth = layerDepth
//left wheel
draw_sprite_ext(spr_defaultWheel, 0, x-37*visualScale, y+9*visualScale, visualScale, visualScale, wheelAngle, c_white, 1);
//right wheel
draw_sprite_ext(spr_defaultWheel, 0, x+39*visualScale, y+9*visualScale, visualScale, visualScale, wheelAngle, c_white, 1);
