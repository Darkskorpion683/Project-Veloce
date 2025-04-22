// Draw the central car sprite (scaled up)
// Draw the central car sprite (scaled up)
draw_sprite_ext(carBodies[carIndex], 0, x, y, 5, 5, 0, c_white, 1);
global.player_carBody = carBodies[carIndex]
// Handle each button
for (var i = 0; i < array_length(buttons); i++) {
    var spr = buttons[i];

    // Get sprite dimensions
    var w = sprite_get_width(spr.sprite);
    var h = sprite_get_height(spr.sprite);

    // Apply custom scaling
    var sx = spr.scalex;
    var sy = spr.scaley;
    var scaled_w = w * abs(sx);
    var scaled_h = h * abs(sy);

    // Draw position
    var draw_x = spr.thisx;
    var draw_y = spr.thisy;

    // ✅ Calculate hitbox based on scaled size and centered origin
    var left   = draw_x - (scaled_w / 2);
    var right  = draw_x + (scaled_w / 2);
    var top    = draw_y - (scaled_h / 2);
    var bottom = draw_y + (scaled_h / 2);

    // Hover detection
    var is_hovered = (mouse_x >= left && mouse_x <= right && mouse_y >= top && mouse_y <= bottom);
    spr.frame = is_hovered ? 1 : 0;

    // Click handling
    if (is_hovered && mouse_check_button_pressed(mb_left)) {
        if (sx > 0) {
            carIndex = (carIndex > 0) ? carIndex - 1 : 3;
        } else if (sx < 0) {
            carIndex = (carIndex < 3) ? carIndex + 1 : 0;
        }
    }

    // Draw button
    draw_sprite_ext(spr.sprite, spr.frame, draw_x, draw_y, sx, sy, 0, c_white, 1);
}
draw_set_font(fnt_button)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(x, y-200, ("Body Type   " + string(carIndex+1)));
draw_set_font(-1);