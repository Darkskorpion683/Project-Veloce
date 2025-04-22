if (freeze_screen_now) {
    freeze_screen_now = false;

    if (surface_exists(application_surface)) {
        var sw = surface_get_width(application_surface);
        var sh = surface_get_height(application_surface);

        global.captured_sprite = sprite_create_from_surface(application_surface, 0, 0, sw, sh, false, false, 0, 0);
		if (surface_exists(application_surface)) {
		draw_surface(application_surface, 0, 0); // 👈 TEMP: draw the surface directly
		}
        // --- GRAYSCALE CONVERSION ---
        var w = sprite_get_width(global.captured_sprite);
        var h = sprite_get_height(global.captured_sprite);

        if (w > 0 && h > 0) {
            var s = surface_create(w, h);
            if (surface_exists(s)) {
                surface_set_target(s);
                draw_clear_alpha(c_black, 0);

                //shader_set(shd_greyscale);
                //draw_sprite_ext(global.captured_sprite, 0, 0, 0, 1, 1, 0, c_white, 1);
                //shader_reset();

                surface_reset_target();

                var gray_sprite = sprite_create_from_surface(s, 0, 0, w, h, false, false, 0, 0);
                surface_free(s);

                global.captured_sprite = gray_sprite;
            }
        }
    }

    global.racers = [
        { name: "Player", x: obj_playerCar.x, is_player: true },
        { name: "Opponent 1", x: obj_opponent1.x, is_player: false },
        { name: "Opponent 2", x: obj_opponent2.x, is_player: false },
        { name: "Opponent 3", x: obj_opponent3.x, is_player: false }
    ];

    alarm[1] = 1; // Now safely switch rooms
}