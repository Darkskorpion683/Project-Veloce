var w = sprite_get_width(sprite_index);

/// Draw two copies for seamless tiling
draw_sprite(sprite_index, image_index, bg_offset, y_draw);
draw_sprite(sprite_index, image_index, bg_offset + w, y_draw);