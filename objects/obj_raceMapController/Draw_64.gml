display_set_gui_size(544, 306);
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
draw_set_color(c_red)
draw_rectangle(drawx,drawy, drawx+160, drawy+40, false);

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
