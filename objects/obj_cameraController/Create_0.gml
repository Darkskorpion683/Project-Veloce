cam = view_camera[0];
cam_w = camera_get_view_width(cam);
cam_h = camera_get_view_height(cam);
custom_capture_surface = -1;
capture_requested = false;
delay_timer = 0; // Start at frame 0
delay_duration = 10;
scoreboardLoaded = false
audio_stop_sound(global.current_music);
global.current_music = audio_play_sound(snd_raceMusic,1,true)
