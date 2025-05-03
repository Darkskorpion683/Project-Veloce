if (keyboard_check_pressed(ord("G"))) {
    show_debug_message("G key is held down!");
	carIndex = 0
	if(classIndex <= 0){
		classIndex = array_length(carClasses)-1
	}
	else{
		classIndex--
	}
}

if (keyboard_check_pressed(ord("H"))) {
    show_debug_message("H key is held down!");
	carIndex = 0
	if(classIndex >= array_length(carClasses)-1){
		classIndex = 0
	}
	else{
		classIndex++
	}
}

if (keyboard_check_pressed(ord("V"))) {
    show_debug_message("V key is held down!");
	if(carIndex <= 0){
		carIndex =  array_length(carClasses[classIndex])-1
	}
	else{
		carIndex--
	}
}

if (keyboard_check_pressed(ord("B"))) {
    show_debug_message("B key is held down!");
	if(carIndex >= array_length(carClasses[classIndex])-1){
		carIndex = 0
		
	}
	else{
		carIndex++
	}
}

if (keyboard_check_pressed(ord("N"))) {
    show_debug_message("N key is held down!" + string(colorIndex));
	if(colorIndex <= 0){
		colorIndex =  array_length(selectedCar.color) -1
	}
	else{
		colorIndex--
	}
	
}

if (keyboard_check_pressed(ord("M"))) {
    show_debug_message("M key is held down!" + string(colorIndex));
	if(colorIndex >= array_length(selectedCar.color) -1){
		colorIndex = 0
		
	}
	else{
		colorIndex++
	}
}

if (mouse_x > x + 150 - sprite_get_width(spr_carSelectArrow) && mouse_x < x + 150 + sprite_get_width(spr_carSelectArrow) &&
    mouse_y > y - 200 - sprite_get_height(spr_carSelectArrow) && mouse_y < y - 200 + sprite_get_height(spr_carSelectArrow)) {
		if(mouse_check_button_pressed(mb_left)){
			colorIndex = 0
			if(carIndex <= 0){
				carIndex =  array_length(carClasses[classIndex])-1
			}
			else{
				carIndex--
			}
		}
}

if (mouse_x > x - 150 - sprite_get_width(spr_carSelectArrow) && mouse_x < x - 150 + sprite_get_width(spr_carSelectArrow) &&
    mouse_y > y - 200 - sprite_get_height(spr_carSelectArrow) && mouse_y < y - 200 + sprite_get_height(spr_carSelectArrow)) {
		if(mouse_check_button_pressed(mb_left)){
			colorIndex = 0
			if(carIndex >= array_length(carClasses[classIndex])-1){
				carIndex = 0
		
			}
			else{
				carIndex++
			}
		}
}

if (mouse_x > x + 150 - sprite_get_width(spr_carSelectArrow) && mouse_x < x + 150 + sprite_get_width(spr_carSelectArrow) &&
    mouse_y > y - 230 - sprite_get_height(spr_carSelectArrow) && mouse_y < y - 230 + sprite_get_height(spr_carSelectArrow)) {
		if(mouse_check_button_pressed(mb_left)){
		colorIndex = 0
		carIndex = 0
		if(classIndex >= array_length(carClasses)-1){
			classIndex = 0
		}
		else{
			classIndex++
		}
	}
}

if (mouse_x > x - 150 - sprite_get_width(spr_carSelectArrow) && mouse_x < x - 150 + sprite_get_width(spr_carSelectArrow) &&
    mouse_y > y - 230 - sprite_get_height(spr_carSelectArrow) && mouse_y < y - 230 + sprite_get_height(spr_carSelectArrow)) {
		if(mouse_check_button_pressed(mb_left)){
		colorIndex = 0
		carIndex = 0
		if(classIndex <= 0){
			classIndex = array_length(carClasses)-1
		}
		else{
			classIndex--
		}
	}
}
//color
if (mouse_x > x + 150 - sprite_get_width(spr_carSelectArrow) && mouse_x < x + 150 + sprite_get_width(spr_carSelectArrow) &&
    mouse_y > y + 150 - sprite_get_height(spr_carSelectArrow) && mouse_y < y + 150 + sprite_get_height(spr_carSelectArrow)) {
		if(mouse_check_button_pressed(mb_left)){
			if(colorIndex >= array_length(selectedCar.color)-1){
			colorIndex = 0
			}
			else{
			colorIndex++
			}			
		}
}

if (mouse_x > x - 150 - sprite_get_width(spr_carSelectArrow) && mouse_x < x - 150 + sprite_get_width(spr_carSelectArrow) &&
    mouse_y > y + 150 - sprite_get_height(spr_carSelectArrow) && mouse_y < y + 150 + sprite_get_height(spr_carSelectArrow)) {
		if(mouse_check_button_pressed(mb_left)){
			if(colorIndex <= 0){
				colorIndex = array_length(selectedCar.color)-1
			}
			else{
				colorIndex--
			}
		}
}
currentClass = carClasses[classIndex]
selectedCar = currentClass[carIndex]
if(global.player_currentCar == selectedCar){
	global.player_carColor = colorIndex
}