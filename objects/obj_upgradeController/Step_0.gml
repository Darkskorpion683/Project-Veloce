// Match button dimensions
var btnW = 300;
var btnH = 60;

// Match button position (same as in Draw GUI)
 var btnX = obj_carSelector.x + 160;
 var btnY = obj_carSelector.y + 200;
 
 var mouse_x_gui = device_mouse_x_to_gui(0);
 var mouse_y_gui = device_mouse_y_to_gui(0);
 var hovered = mouse_x_gui > btnX && mouse_x_gui < btnX + btnW &&
               mouse_y_gui > btnY && mouse_y_gui < btnY + btnH;
 
 if (hovered && mouse_check_button_pressed(mb_left)) {
     var totalCost = 0;
 
     with (obj_upgradeSlider) {
         totalCost += getUpgradeCost();
     }
 
     if (global.playerMoney >= totalCost) {
         global.playerMoney -= totalCost;
 
         with (obj_upgradeSlider) {
             applyUpgrade();
         }
 
         show_debug_message("✅ Upgrades purchased for $" + string(totalCost));
     } else {
         show_debug_message("❌ Not enough money!");
     }
 }
 
 // ==== Start Race Button Click ====
 var raceBtnW = 240;
 var raceBtnH = 50;
 var raceBtnX = obj_carSelector.x + 160;
 var raceBtnY = obj_carSelector.y + 280; // Match Draw GUI
 
 var raceHovered = mouse_x_gui > raceBtnX && mouse_x_gui < raceBtnX + raceBtnW &&
                   mouse_y_gui > raceBtnY && mouse_y_gui < raceBtnY + raceBtnH;
 
 if (raceHovered && mouse_check_button_pressed(mb_left)) {
     room_goto(rm_raceMap); // or your actual race room
 }