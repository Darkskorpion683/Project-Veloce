if (!surface_exists(custom_capture_surface)) {
    custom_capture_surface = surface_create(cam_w, cam_h);
}

// Set this surface as the render target
surface_set_target(custom_capture_surface);
draw_clear_alpha(c_black, 0);

// Draw everything you normally would (like the camera would show)
// For example:
draw_self(); // Or your player, world, etc.

surface_reset_target();