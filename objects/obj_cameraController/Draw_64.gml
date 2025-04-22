if (capture_requested) {
    capture_requested = false;

    if (surface_exists(custom_capture_surface)) {
        global.captured_sprite = sprite_create_from_surface(
            custom_capture_surface, 0, 0, cam_w, cam_h, false, false, 0, 0
        );
        show_debug_message("📸 Captured from custom surface!");

        room_goto(rm_victory);
    }
}