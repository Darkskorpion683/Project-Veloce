draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_sprite(spr_dashboard_gui, 0, 0, display_get_gui_height());

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_sprite(spr_tachometer, 0, 232, display_get_gui_height()-61);

// Draw needle
draw_sprite_ext(
    spr_tachometerNeedle,
    0, 
    232,				// pivot point x
    display_get_gui_height()-61,			// pivot point y
    1, 1,           // Scale
    needle_angle,			// Angle in degrees
    c_white,        // Color
    1               // Alpha
);
