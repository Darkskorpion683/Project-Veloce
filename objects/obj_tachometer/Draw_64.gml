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

// Draw needles for speedometer and nitrous
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

// Draw numbers on meters

var cx = 398; // center x
var cy = 298; // center y
var radius = 43; // distance from center to numbers
var minVal = 0;
var maxVal = 180;
var step = 20; // show numbers every 20 km/h
var minAngle = -40;
var maxAngle = 220;

// Set font and alignment for speedometer and tachometer

// Speedometer variables
draw_set_font(fontBigNums);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Speedometer Alignment
for (var val = minVal; val <= maxVal; val += step) {
    var t = (val - minVal) / (maxVal - minVal); // normalize to 0..1
   var angle_deg = lerp(maxAngle, minAngle, t);
    var angle_rad = degtorad(angle_deg);

    x = cx + lengthdir_x(radius, angle_deg);
    y = cy + lengthdir_y(radius, angle_deg);

    draw_text(x, y, string(val));
}

// Tachometer variables
var cx_tach = 232; // center x for tachometer
var cy_tach = display_get_gui_height() - 61; // center y for tachometer
var radius_tach = 43; // distance from center to numbers on tachometer
var minTach = 0; // minimum value (0)
var maxTach = 9; // maximum value (10)
var stepTach = 1; // increment by 1 (0 to 10)
var minAngleTach = 220; // starting angle (can adjust for better placement)
var maxAngleTach = -40; // ending angle (can adjust for better placement)

// Draw Tachometer Needle
draw_sprite_ext(
    spr_tachometerNeedle,  // Needle sprite
    0, 
    cx_tach,               // pivot point x (center of the tachometer)
    cy_tach,               // pivot point y (center of the tachometer)
    1, 1,                  // Scale
    tachometer_angle,      // Angle in degrees (based on RPM)
    c_white,               // Color
    1                      // Alpha
);

// Draw numbers for tachometer
for (var val = minTach; val <= maxTach; val += stepTach) {
    var t = (val - minTach) / (maxTach - minTach); // normalize to 0..1
    var angle_deg = lerp(minAngleTach, maxAngleTach, t); // calculate the angle for each value
    var angle_rad = degtorad(angle_deg); // convert to radians

    // Calculate position of the number
    var x_tach = cx_tach + lengthdir_x(radius_tach, angle_deg);
    var y_tach = cy_tach + lengthdir_y(radius_tach, angle_deg);

    // Draw the number at calculated position
    draw_text(x_tach, y_tach, string(val));
}

// Draw digital race timer
draw_sprite(spr_digital_timer, 0, 80, display_get_gui_height()-21);
draw_set_font(fnt_HUD);
draw_text(80, display_get_gui_height()-21, string(obj_progressBar.race_timer) + "s");


