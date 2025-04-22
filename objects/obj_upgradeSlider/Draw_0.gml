// Draw the central sprite (always centered)
draw_sprite_ext(spr_btn_upgrade_bar, barProgress, x, y,UIScale,UIScale,0,c_white,1);
// Handle each button
for (var i = 0; i < array_length(buttons); i++) {
	var spr = buttons[i];

	var w = sprite_get_width(spr.sprite);
	var h = sprite_get_height(spr.sprite);
	var draw_x = spr.thisx;
	var draw_y = spr.thisy;

	var sx = spr.scalex;
	var sy = spr.scaley;

	var scaled_w = w * abs(sx);
	var scaled_h = h * abs(sy);

	var left   = draw_x - (scaled_w / 2);
	var right  = draw_x + (scaled_w / 2);
	var top    = draw_y - (scaled_h / 2);
	var bottom = draw_y + (scaled_h / 2);

	var is_hovered = (mouse_x >= left && mouse_x <= right && mouse_y >= top && mouse_y <= bottom);

	spr.frame = is_hovered ? 1 : 0;

	if (is_hovered && mouse_check_button_pressed(mb_left)) {
		if (spr.scalex > 0 && barProgress > 1) {
			barProgress--;
		}
		else if (spr.scalex < 0 && barProgress < 4) {
			barProgress++;
		}
	}

	// Redraw button sprite
	draw_sprite_ext(
		spr.sprite,
		spr.frame,
		draw_x,
		draw_y,
		spr.scalex,
		spr.scaley,
		0,
		c_white,
		1
	);
}