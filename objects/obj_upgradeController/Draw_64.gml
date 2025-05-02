// Shared Purchase Button
var btnW = 200; // Slightly smaller but very readable
var btnH = 60;

// Position relative to obj_carImitator
var btnX = obj_carSelector.x + 160
var btnY = obj_carSelector.y + 200; // Shift downward from car center

var mouse_x_gui = device_mouse_x_to_gui(0);
var mouse_y_gui = device_mouse_y_to_gui(0);
var hovered = mouse_x_gui > btnX && mouse_x_gui < btnX + btnW &&
              mouse_y_gui > btnY && mouse_y_gui < btnY + btnH;

// Calculate total cost from all sliders
var totalCost = 0;
with (obj_upgradeSlider) {
    totalCost += getUpgradeCost();
}

// Draw the button
draw_set_color(hovered ? c_gray : c_dkgray);
draw_rectangle(btnX, btnY, btnX + btnW, btnY + btnH, false);

// Draw text
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(btnX + btnW / 2, btnY + btnH / 2, "Purchase All ($" + string(totalCost) + ")");

// Draw available money
draw_set_color(c_lime);
draw_set_font(fnt_money)
draw_text(btnX + btnW / 2, 24, "Money: $" + string(global.playerMoney));

draw_set_color(c_white);
 
 // ==== Start Race Button ====
 var raceBtnW = 200;
 var raceBtnH = 60;
 var raceBtnX = obj_carSelector.x + 160;
 var raceBtnY = obj_carSelector.y + 280;
 
 var raceHovered = mouse_x_gui > raceBtnX && mouse_x_gui < raceBtnX + raceBtnW &&
                   mouse_y_gui > raceBtnY && mouse_y_gui < raceBtnY + raceBtnH;
 
 // Draw race button background
 draw_set_color(raceHovered ? c_gray : c_dkgray);
 draw_rectangle(raceBtnX, raceBtnY, raceBtnX + raceBtnW, raceBtnY + raceBtnH, false);
 
 // Draw race button text
 draw_set_color(c_white);
 draw_set_halign(fa_center);
 draw_set_valign(fa_middle);
 draw_text(raceBtnX + raceBtnW / 2, raceBtnY + raceBtnH / 2, "Race Map");
 
draw_set_halign(fa_left);
draw_set_valign(fa_top);
 
