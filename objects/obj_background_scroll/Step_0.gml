// 1) Compute normalized progress t ∈ [0,1]
var traveled    = obj_playerCar.x - start_x;
var total_dist  = end_x - start_x;
var t = clamp(traveled / total_dist, 0, 1);

// 2) Map that progress to a pixel offset
var w = sprite_get_width(sprite_index);
bg_offset = -t * w * parallax_factor;

// 3) Wrap so we stay within [–w … 0]
bg_offset = bg_offset mod w;