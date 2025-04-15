// ==== CONFIGURATION ====
var bar_x = 95;
var bar_y = 5;
var bar_width = 350;
var bar_height = 10;

var start_x = 288;
var finish_x = 18000;

// ==== PROGRESS CALCULATIONS ====
var player_total_distance = finish_x - start_x;
var player_traveled = clamp(obj_playerCar.x - start_x, 0, player_total_distance);
var player_progress = player_traveled / player_total_distance;

var opponent1_total_distance = finish_x - start_x
var opponent1_traveled = clamp(obj_opponent1.x - start_x, 0, opponent1_total_distance);
var opponent1_progress = opponent1_traveled / opponent1_total_distance;

var opponent2_total_distance = finish_x - start_x
var opponent2_traveled = clamp(obj_opponent2.x - start_x, 0, opponent2_total_distance);
var opponent2_progress = opponent2_traveled / opponent2_total_distance;

var opponent3_total_distance = finish_x - start_x
var opponent3_traveled = clamp(obj_opponent3.x - start_x, 0, opponent3_total_distance);
var opponent3_progress = opponent3_traveled / opponent3_total_distance;

// ==== STYLE COLORS ====
var bg_color = make_color_rgb(0, 0, 0);
var alpha = draw_set_alpha(128)
var border_color = c_white;
var fill_color = c_aqua;

// ==== DRAW BACKGROUND ====
draw_set_color(bg_color);
draw_roundrect(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);
draw_roundrect(bar_x, bar_y + 10, bar_x + bar_width, bar_y + 10 + bar_height, false);
draw_roundrect(bar_x, bar_y + 20, bar_x + bar_width, bar_y + 20 + bar_height, false);
draw_roundrect(bar_x, bar_y + 30, bar_x + bar_width, bar_y + 30 + bar_height, false);

// ==== DRAW FILL ====
draw_set_color(fill_color);
draw_roundrect(bar_x + 2, bar_y + 2, bar_x + (bar_width * player_progress), bar_y + bar_height - 2, false);
draw_roundrect(bar_x + 2, bar_y + 12, bar_x + (bar_width * opponent1_progress), bar_y + 10 + bar_height - 2, false);
draw_roundrect(bar_x + 2, bar_y + 22, bar_x + (bar_width * opponent2_progress), bar_y + 20 + bar_height - 2, false);
draw_roundrect(bar_x + 2, bar_y + 32, bar_x + (bar_width * opponent3_progress), bar_y + 30 + bar_height - 2, false);

// ==== DRAW BORDER ====
draw_set_color(border_color);
draw_roundrect(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, true);
draw_roundrect(bar_x, bar_y + 10, bar_x + bar_width, bar_y + 10 + bar_height, true);
draw_roundrect(bar_x, bar_y + 20, bar_x + bar_width, bar_y + 20 + bar_height, true);
draw_roundrect(bar_x, bar_y + 30, bar_x + bar_width, bar_y + 30 + bar_height, true);

// Stop the race
if obj_playerCar.x >= 19200 {
	obj_playerCar.currentSpeed = 0
	obj_playerCar.accelerationFactor = 0;
	
	obj_opponent1.currentSpeed = 0
	obj_opponent1.accelerationFactor = 0;
	
	obj_opponent2.currentSpeed = 0
	obj_opponent2.accelerationFactor = 0;
	
	obj_opponent3.currentSpeed = 0
	obj_opponent3.accelerationFactor = 0;
}


draw_set_color(c_white)
