if (sprite_exists(global.captured_sprite)) {
    draw_sprite(global.captured_sprite, 0, 0, 0); // draws at the object position
}

// Calculate fade percentage
var t = clamp(veil_fade_timer / veil_fade_duration, 0, 1);

// Interpolate from white to black
var r = lerp(255, 0, t);
var g = lerp(255, 0, t);
var b = lerp(255, 0, t);
var a = lerp(1.0, 0.7, t); // alpha goes from 1 to 0.7

draw_set_alpha(a);
draw_set_color(make_color_rgb(r, g, b));
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1);
var cx = display_get_gui_width() / 2
var cy = display_get_gui_height() / 2
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white); 
draw_text(cx, cy,string(global.place))


draw_set_color(c_lime)
draw_text(cx, cy + 20 ,"$"+string(rewardMoney))
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// --- Button Setup ---
var btn_width  = 200;
var btn_height = 40;
var btn_x = cx - btn_width / 2;
var btn_y = cy + 60; // below reward text

// Hover/click detection
var mouse_x_gui = device_mouse_x_to_gui(0);
var mouse_y_gui = device_mouse_y_to_gui(0);
var hovered = (mouse_x_gui > btn_x && mouse_x_gui < btn_x + btn_width &&
               mouse_y_gui > btn_y && mouse_y_gui < btn_y + btn_height);

// Draw button background
draw_set_color(hovered ? c_gray : c_dkgray);
draw_rectangle(btn_x, btn_y, btn_x + btn_width, btn_y + btn_height, false);

// Draw button text
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(btn_x + btn_width/2, btn_y + btn_height/2, "Race Road Map");

// Button click handler (outside of draw GUI!)
if (hovered && mouse_check_button_pressed(mb_left)) {
	audio_stop_sound(global.current_music)
	global.current_music = audio_play_sound(snd_menuMusic,1,true)
	if global.place == 1 && global.raceIndex < 24{
		global.raceIndex++
	}
    room_goto(rm_raceMap); // replace with your upgrade menu room
}