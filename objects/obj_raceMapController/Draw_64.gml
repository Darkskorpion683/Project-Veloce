display_set_gui_size(800, 450);
btnXWidth = 160
btnYHeight = 40
drawx = 0
drawy = display_get_gui_height() - btnYHeight
mx = device_mouse_x_to_gui(0)
my = device_mouse_y_to_gui(0)
mapInfo = raceMapGetInfo(raceSelection,global.raceIndex)
draw_set_font(fnt_mapScreen)


if(mx > 0 && mx < btnXWidth && device_mouse_y_to_gui(0) > drawy && my < display_get_gui_height()){
garageMenuSelected = true
	if(mouse_check_button_pressed(mb_left)){
		room_goto(rm_vehicleUpgradeMenu)
	}
}
else{
garageMenuSelected = false
}

if(!garageMenuSelected){
	draw_set_alpha(0.5)
}
draw_set_color(c_dkgray)
draw_rectangle(drawx,drawy, drawx+160, drawy+40, false);
draw_set_valign(fa_middle)
draw_set_color(c_white)
draw_text(drawx + btnXWidth/2, drawy + btnYHeight/2, "Garage");

btnXWidth = 225
btnYHeight = 200
drawx = display_get_gui_width() - btnXWidth
drawy = 50


draw_set_color(c_black)
draw_set_alpha(0.5)
draw_rectangle(drawx,drawy, drawx+225, drawy+btnYHeight, false);

draw_set_color(c_white)
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_valign(fa_top)

for(var i = 1; i <= array_length(mapInfo); i++){
	if i < array_length(mapInfo){
	draw_text_transformed(drawx + btnXWidth/2, drawy+(20*i)-20, mapInfo[i],1.5,1.5,0);
	}
	else{
		if mapInfo[0]{
			
			if (mx > drawx + btnXWidth/2 - 80 && drawx + btnXWidth/2 + 80 && my > drawy + (20*i) + 20 && my < drawy + (20*i) + 40){
				draw_set_alpha(1)
				if(mouse_check_button_pressed(mb_left)){
					room_goto(rm_raceGameplay)
				}
			}
			else{
				draw_set_alpha(0.5)
			}
			draw_set_color(c_green)
			draw_rectangle(drawx + btnXWidth/2-80,drawy+(20*i)+40, drawx + btnXWidth/2+80, drawy+(20*i)+20, false);
			draw_set_color(c_white)
			draw_text(drawx + btnXWidth/2, drawy+(20*i)+20, "Race");
			
		}
		else{
			draw_set_alpha(0.3)
			draw_set_color(c_gray)
			draw_rectangle(drawx + btnXWidth/2-80,drawy+(20*i)+40, drawx + btnXWidth/2+80, drawy+(20*i)+20, false);
			draw_set_color(c_white)
			draw_text(drawx + btnXWidth/2, drawy+(20*i)+20, "Locked");
		}
		draw_set_alpha(1)
	}
	
}

if (mx > display_get_gui_width()-215 - sprite_get_width(spr_carSelectArrow) && mx < display_get_gui_width()-215 + sprite_get_width(spr_carSelectArrow) &&
    my > display_get_gui_height()-180 - sprite_get_height(spr_carSelectArrow) && my < display_get_gui_height()-180 + sprite_get_height(spr_carSelectArrow)) {
		if(mouse_check_button_pressed(mb_left)){
			if raceSelection <= 0 {
					raceSelection = array_length(raceClass)-1
				}
				else{
					raceSelection--
				}
				frameIndex = 0
		}	
}

if (mx > display_get_gui_width()-10 - sprite_get_width(spr_carSelectArrow) && mx < display_get_gui_width()-10 + sprite_get_width(spr_carSelectArrow) &&
    my > display_get_gui_height()-180 - sprite_get_height(spr_carSelectArrow) && my < display_get_gui_height()-180 + sprite_get_height(spr_carSelectArrow)) {
		if(mouse_check_button_pressed(mb_left)){
				if raceSelection >= array_length(raceClass)-1 {
						raceSelection = 0
					}
					else{
						raceSelection++
					}
					frameIndex = 0
		}
}

draw_sprite_ext(spr_carSelectArrow,0,display_get_gui_width()-215,display_get_gui_height()-180,2,2,180,c_white,1)
draw_sprite_ext(spr_carSelectArrow,0,display_get_gui_width()-10,display_get_gui_height()-180,2,2,0,c_white,1)
