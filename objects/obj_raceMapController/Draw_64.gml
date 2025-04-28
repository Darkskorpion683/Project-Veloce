drawx = 0
drawy = display_get_gui_height() - 40
draw_set_color(c_red)

if(device_mouse_x_to_gui(0) > 0 && device_mouse_x_to_gui(0) < 160 && device_mouse_y_to_gui(0) > display_get_gui_height() - 40 && device_mouse_y_to_gui(0) < display_get_gui_height()){
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
draw_rectangle(drawx,drawy, drawx+160, drawy+40, false);
draw_set_alpha(1)