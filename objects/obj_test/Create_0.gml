var spr = spr_playerCar; // replace with your sprite
var w = sprite_get_width(spr);
var h = sprite_get_height(spr);

// Step 1: Draw original sprite to a source surface
var source_surf = surface_create(w, h);
surface_set_target(source_surf);
draw_clear_alpha(c_black, 0);
draw_sprite(spr, 0, 0, 0);
surface_reset_target();

// Step 2: Create a second surface for grayscale output
var gray_surf = surface_create(w, h);
surface_set_target(gray_surf);
draw_clear_alpha(c_black, 0);

// Step 3: Pixel-by-pixel grayscale conversion
for (var yy = 0; yy < h; yy++) {
    for (var xx = 0; xx < w; xx++) {
        var col = surface_getpixel(source_surf, xx, yy);
        var r = color_get_red(col);
        var g = color_get_green(col);
        var b = color_get_blue(col);

        var gray = round((r * 0.299) + (g * 0.587) + (b * 0.114));
        var gray_col = make_color_rgb(gray, gray, gray);

        draw_set_color(gray_col);
        draw_point(xx, yy);
    }
}

surface_reset_target();
surface_free(source_surf);

// Step 4: Convert to sprite
global.grey_car_sprite = sprite_create_from_surface(gray_surf, 0, 0, w, h, false, false, 0, 0);
surface_free(gray_surf);