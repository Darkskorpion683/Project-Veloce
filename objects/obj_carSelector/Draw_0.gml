var _spr = selectedCar.color[colorIndex].spr;
draw_sprite_ext(_spr, 0, x, y, 4, 4, 0, c_white, 1);


draw_text(x,y-200,selectedCar.carName)
draw_text(x,y-220,selectedCar.class)

//left wheel
draw_sprite_ext(spr_defaultWheel, 0, x-(37*4), y+(9*4), 4, 4, 0, c_white, 1);
//right wheel
draw_sprite_ext(spr_defaultWheel, 0, x+(39*4), y+(9*4), 4, 4, 0, c_white, 1);