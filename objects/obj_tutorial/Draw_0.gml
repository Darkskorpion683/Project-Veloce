// Draw Event
var slide = slides[slide_index];

// Get room size
var room_w = 1366;
var room_h = 768;

// Get slide size
var slide_w = sprite_get_width(slide);
var slide_h = sprite_get_height(slide);

// Calculate centered position
x = (room_w - slide_w) / 2;
y = (room_h - slide_h) / 2;

// Draw border (optional: change colors/sizes as needed)
var border_padding = 20;
draw_set_color(c_white);
draw_rectangle(x - border_padding, y - border_padding, x + slide_w + border_padding, y + slide_h + border_padding, false);

// Draw background behind the slide for contrast (optional)
draw_set_color(make_color_rgb(30, 30, 30));
draw_rectangle(x - border_padding, y - border_padding, x + slide_w + border_padding, y + slide_h + border_padding, true);

// Draw slide image
draw_sprite(slide, 0, x, y);
