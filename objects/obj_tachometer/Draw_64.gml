// Draw black HUD background
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_sprite(spr_dashboard_gui, 0, 0, display_get_gui_height());

// Draw shift timer
draw_sprite(spr_shiftlight_module, 0, 312, display_get_gui_height()-35);
var lights_on = shift_progress; // value from 0 to 14

// Draw lights from left to right
for (var i = 0; i < lights_on; i++) {
    var draw_x = start_x + (i * light_spacing);
    var light_sprite;
    
    if (i < blue_count) {
        light_sprite = spr_shiftlight_blue;
    }
    else if (i < blue_count + red_count) {
        light_sprite = spr_shiftlight_red;
    }
    else {
        light_sprite = spr_shiftlight_green;
    }

    draw_sprite(light_sprite, 0, draw_x, start_y);
}



// Draw tach and speedometers
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_sprite(spr_tachometer, 0, 232, display_get_gui_height()-61);
draw_sprite(spr_speedometer_mph, 0, 400, display_get_gui_height()-61);

// Draw nitrous gauge
draw_sprite(spr_nitrous_gauge, 0, 550, display_get_gui_height()-24);

// Draw needles
draw_sprite_ext(
    spr_tachometerNeedle,
    0, 
    232,				// pivot point x
    display_get_gui_height()-61,			// pivot point y
    1, 1,           // Scale
    tachometer_needle,			// Angle in degrees
    c_white,        // Color
    1               // Alpha
);

draw_sprite_ext(
    spr_tachometerNeedle,
    0, 
    400,				// pivot point x
    display_get_gui_height()-61,			// pivot point y
    1, 1,           // Scale
    speedometer_needle,			// Angle in degrees
    c_white,        // Color
    1               // Alpha
);

draw_sprite_ext(
    spr_small_gauge_needle,
    0, 
    550,				// pivot point x
    display_get_gui_height()-24,			// pivot point y
    1, 1,           // Scale
    nitrous_needle,			// Angle in degrees
    c_white,        // Color
    1               // Alpha
);

// Draw digital race timer
draw_sprite(spr_digital_timer, 0, 80, display_get_gui_height()-21);
draw_text(80, display_get_gui_height()-21, string(obj_progressBar.race_timer) + "s");



