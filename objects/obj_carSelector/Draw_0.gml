var _spr = selectedCar.color[colorIndex].spr;
draw_sprite_ext(_spr, 0, x, y, 4, 4, 0, c_white, 1);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x,y-230,"Class: " + selectedCar.class)
draw_text(x,y-200,selectedCar.carName)
draw_sprite_ext(spr_carSelectArrow,0,x+150,y-200,2,2,0,c_white,1)
draw_sprite_ext(spr_carSelectArrow,0,x+150,y-230,2,2,0,c_white,1)
draw_sprite_ext(spr_carSelectArrow,0,x-150,y-200,2,2,180,c_white,1)
draw_sprite_ext(spr_carSelectArrow,0,x-150,y-230,2,2,180,c_white,1)
//color
draw_text(x,y+150,selectedCar.color[colorIndex].str)
draw_sprite_ext(spr_carSelectArrow,0,x-150,y+150,2,2,180,c_white,1)
draw_sprite_ext(spr_carSelectArrow,0,x+150,y+150,2,2,0,c_white,1)

draw_set_halign(fa_left);
draw_set_valign(fa_top);

//left wheel
draw_sprite_ext(spr_defaultWheel, 0, x-(selectedCar.leftWheel_x*4), y+(selectedCar.y_offset*4), 4, 4, 0, c_white, 4);
//right wheel
draw_sprite_ext(spr_defaultWheel, 0, x+(selectedCar.rightWheel_x*4), y+(selectedCar.y_offset*4), 4, 4, 0, c_white, 4);