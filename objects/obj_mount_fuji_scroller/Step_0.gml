// Subtract player's horizontal speed times factor.
// If your player object uses 'hspeed', replace accordingly.
bg_offset -= obj_playerCar.hspeed * parallax_factor;

// Keep offset within one sprite‐width to avoid large numbers
var w = sprite_get_width(sprite_index);
bg_offset = bg_offset mod w;