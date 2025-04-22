if (sprite_exists(global.captured_sprite)) {
    draw_sprite_ext(global.captured_sprite, 0, sprite_get_width(global.captured_sprite) / 2, sprite_get_height(global.captured_sprite) / 2, 1, 1, 0, c_white, 1);
}
racers = global.racers
for (var i = 0; i < array_length(racers) - 1; i++) {
	for (var j = i + 1; j < array_length(racers); j++) {
	    if (racers[j].x > racers[i].x) {
	        var temp = racers[i];
	        racers[i] = racers[j];
	        racers[j] = temp;
	    }
	}
}

var first = racers[0];
var second = racers[1];
var third = racers[2];
var fourth = racers[3];
	
draw_set_color(c_white)
draw_text(10, 10, "1st: " + first.name)
draw_text(10, 30, "2nd: " + second.name)
draw_text(10, 50, "3rd: " + third.name)
draw_text(10, 70, "4th: " + fourth.name)