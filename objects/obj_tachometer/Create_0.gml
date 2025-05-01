display_set_gui_size(640, 360);
speedometer_needle = 0
nitrous_needle = 360;
tachometer_angle = 0;

// Shift light variables
blue_count = 4;
red_count = 5;
green_count = 5;
total_lights = blue_count + red_count + green_count;
light_spacing = 7;
start_x = 261;
start_y = display_get_gui_height()-13; 
shift_progress = 0
minRPM = 2000

// Fonts
fontSmallNums = font_add_sprite_ext(spr_numbers_small, "1234567890", true, 0)
fontBigNums = font_add_sprite_ext(spr_numbers_big, "1234567890", true, 0)
fontText = font_add_sprite_ext(spr_text_asset_small, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890?!./", true, 0)
