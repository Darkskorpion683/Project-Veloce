if(keyboard_check_pressed(vk_left)){
	if raceSelection <= 0 {
		raceSelection = array_length(raceClass)-1
	}
	else{
		raceSelection--
	}
	frameIndex = 0
}

if(keyboard_check_pressed(vk_right)){
	if raceSelection >= array_length(raceClass)-1 {
		raceSelection = 0
	}
	else{
		raceSelection++
	}
	frameIndex = 0
}


var frames = 120
if(camX < raceClass[raceSelection].markerX or camX > raceClass[raceSelection].markerX){
	camX = lerp(camX, raceClass[raceSelection].markerX, frameIndex / frames);
}
if(camY < raceClass[raceSelection].markerY or camY > raceClass[raceSelection].markerY){
	camY = lerp(camY, raceClass[raceSelection].markerY, frameIndex / frames);
}
frameIndex++

camera_set_view_pos(view_camera[0], camX, camY)

	
		



