var w = sprite_get_width(sprite_index);

// Primary copy
draw_sprite(sprite_index, image_index, bg_offset, y_draw);

// Second copy to cover the gap
draw_sprite(sprite_index, image_index, bg_offset + w, y_draw);