function draw_neon_button(spr, x, y, scale, glow_color) {
    var w = sprite_get_width(spr) * scale;
    var h = sprite_get_height(spr) * scale;

    var draw_x = x - w / 2;
    var draw_y = y - h / 2;

    // Hover detection
    var is_hover = (mouse_x >= draw_x && mouse_x <= draw_x + w &&
                    mouse_y >= draw_y && mouse_y <= draw_y + h);

    // Choose base color

    if (is_hover) {
        gpu_set_blendmode(bm_add);

        // Draw radial glow using circles around the center
        var radius = max(w, h)*.25;
        for (var i = 1; i <= 6; i++) {
            var alpha = 0.05 * (7 - i) *.25;
            var r = radius * (i * 0.5);
            draw_set_alpha(alpha);
            draw_set_color(glow_color);
            draw_circle(x, y, r, false);  // false = outline (neon ring)
        }

        draw_set_alpha(1);
        gpu_set_blendmode(bm_normal);
    }

    // Draw the actual button sprite (brighter if hovered)
    var sprite_col = is_hover ? c_white : make_color_rgb(200, 200, 200);
    draw_sprite_ext(spr, 0, x, y, scale, scale, 0, sprite_col, 1);

    return is_hover;
}