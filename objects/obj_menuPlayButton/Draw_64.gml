// Base background color
var baseColor = c_dkgray;
var hoverColor = c_gray;
var flashColor = c_white;

// Determine current background color
var bgColor = btn_hovered ? hoverColor : baseColor;
var bgColor2 = btn2_hovered ? hoverColor : baseColor;

// Blend in flash if active
if (btn_flashTimer > 0) {
    var flashAmt = btn_flashTimer / btn_flashDuration; 
    bgColor = merge_color(bgColor, flashColor, flashAmt);
	bgColor2 = merge_color(bgColor, flashColor, flashAmt);
}

// Draw button background
draw_set_color(bgColor);
draw_rectangle(btn_x, btn_y, btn_x + btn_width, btn_y + btn_height, false);

// Draw button text
draw_set_font(fnt_button);
draw_set_color(c_white); 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(btn_x + btn_width / 2, btn_y + btn_height / 2, btn_text);

// Draw button background 2
draw_set_color(bgColor2);
draw_rectangle(btn_x, btn_y + 60, btn_x + btn_width, btn_y + btn_height + 60, false);

// Draw button 2 text
draw_set_color(c_white);
draw_text(btn_x + btn_width / 2, btn_y + 60 + btn_height / 2, btn2_text);