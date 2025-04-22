// Shared Purchase Button
var btnW = 300; // Slightly smaller but very readable
var btnH = 60;

// Position relative to obj_carImitator
var btnX = obj_carImitator.x - btnW / 2;
var btnY = obj_carImitator.y + 130; // Shift downward from car center

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
draw_text(btnX + btnW / 2, btnY - 24, "Money: $" + string(global.playerMoney));

// Reset color just in case
draw_set_color(c_white);