btn_hovered = point_in_rectangle(mouse_x, mouse_y, btn_x, btn_y, btn_x + btn_width, btn_y + btn_height);
btn2_hovered = point_in_rectangle(mouse_x, mouse_y, btn_x, btn_y + 60, btn_x + btn_width, btn_y + btn_height + 60);

// On click: trigger flash
if (btn_hovered && mouse_check_button_pressed(mb_left)) {
    btn_flashTimer = btn_flashDuration;
	room_goto(rm_raceGameplay);
	draw_set_font(-1);
	draw_set_color(c_white);  
	draw_set_alpha(1);          
	draw_set_halign(fa_left);  
	draw_set_valign(fa_top);
}

if (btn2_hovered && mouse_check_button_pressed(mb_left)) {
    btn_flashTimer = btn_flashDuration;
	room_goto(rm_vehicleUpgradeMenu);
	draw_set_font(-1);
	draw_set_color(c_white);  
	draw_set_alpha(1);          
	draw_set_halign(fa_left);  
	draw_set_valign(fa_top);
}

// Count down the flash
if (btn_flashTimer > 0) {
    btn_flashTimer -= 1;
}