draw_sprite(spr_tachometer, 0, 64, 212);

// Draw needle
draw_sprite_ext(
    spr_tachometerNeedle,
    0, 
    64,				// pivot point x
    244,			// pivot point y
    1, 1,           // Scale
    rpm,			// Angle in degrees
    c_white,        // Color
    1               // Alpha
);
