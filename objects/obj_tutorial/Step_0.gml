if (mouse_check_button_pressed(mb_left)) {
    slide_index++;
    if (slide_index >= total_slides) {
        // Go to next room or finish tutorial
        room_goto(rm_raceGameplay);
    }
}