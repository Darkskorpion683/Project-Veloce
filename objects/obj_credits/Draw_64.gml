// CREDIT ROLE & NAME LIST
var credits = [
    ["Producer", "Gabe Herterich"],
    ["Designer", "Ethan Beeson"],
    ["Artist", "Arthur Khantivong"],
    ["Programmer", "John Gould"]
];
draw_set_font(fnt_credits); 
draw_set_halign(fa_center);
draw_set_valign(fa_top);  



var gui_x = x - camera_get_view_x(view_camera[0]);
var gui_y = y - camera_get_view_y(view_camera[0]);


var x_pos = gui_x;
var name_x_offset = gui_x + 300;
var y_start = gui_y;
var line_height = 60;
var outline_size = 2;
var outline_color = c_black;
var text_color = make_color_rgb(255, 105, 180); // neon pink

// Loop through each line of credits
for (var i = 0; i < array_length(credits); i++) {
    var y_pos = y_start + i * line_height;
    var role = credits[i][0];
    var name = credits[i][1];

    // Outline
    for (var ox = -outline_size; ox <= outline_size; ox++) {
        for (var oy = -outline_size; oy <= outline_size; oy++) {
            if (ox != 0 || oy != 0) {
                draw_text_color(x_pos + ox, y_pos + oy, role, outline_color, outline_color, outline_color, outline_color, 1);
                draw_text_color(name_x_offset + ox, y_pos + oy, name, outline_color, outline_color, outline_color, outline_color, 1);
            }
        }
    }

    // Main text
    draw_text_color(x_pos, y_pos, role, text_color, text_color, text_color, text_color, 1);
    draw_text_color(name_x_offset, y_pos, name, text_color, text_color, text_color, text_color, 1);
}

// Reset fonts and alignment to default
draw_set_font(-1); // Resets to default font
draw_set_halign(fa_left); // Default horizontal alignment
draw_set_valign(fa_top);  // Default vertical alignment
