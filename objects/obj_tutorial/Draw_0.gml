var slide = slides[slide_index];

// Room size (assumes no views or camera scaling)
var room_w = 1366;
var room_h = 768;

// Slide size
var slide_w = sprite_get_width(slide);
var slide_h = sprite_get_height(slide);

// Centered position of the slide
x = (room_w - slide_w) / 2;
y = (room_h - slide_h) / 2;

// Draw full-room background/border first
draw_set_color(make_color_rgb(214, 208, 206));
draw_rectangle(0, 0, room_w, room_h, false); // Full fill

// Optional: draw a brighter box behind the slide (frame effect)
var frame_padding = 16;
draw_set_color(c_black);
draw_rectangle(x - frame_padding, y - frame_padding, x + slide_w + frame_padding, y + slide_h + frame_padding, false);

// Draw the slide centered
draw_sprite(slide, 0, x, y);
