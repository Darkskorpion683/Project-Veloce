var gui_x = x - camera_get_view_x(view_camera[0]);
var gui_y = y - camera_get_view_y(view_camera[0]);

var hovered = draw_neon_button(spr_btn_playGame,gui_x,gui_y,1.5,c_red);

if (hovered && mouse_check_button_pressed(mb_left)) {
    room_goto(rm_raceGameplay);
}