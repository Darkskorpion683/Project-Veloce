draw_text(10, 10, "Gear: " + string(gear));
draw_text(10, 30, "RPM: " + string(round(rpm)));
draw_text(10, 50, "Speed: " + string(currentSpeed));
draw_text(10, 70, "Perfect Shift: " + string(optimalShiftPoints[gear-1]));