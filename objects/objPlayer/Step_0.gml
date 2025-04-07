if (speed != 0){
	distance -= spd;
}

if (distance <= 0){
	speed = 0;
	action = "Stand";
	face = "D";
}

if (speed == 0){
	if (keyboard_check(ord("D"))) {
		hspeed = spd;
		distance = 16;
		action = "Walk";
		face = "R";
		sprite_index = get_sprite(action, face);
	} else if (keyboard_check(ord("A"))) {
		hspeed = -spd;
		distance = 16;
		action = "Walk";
		face = "L";
		sprite_index = get_sprite(action, face);
	} else if (keyboard_check(ord("W"))) {
		vspeed = -spd;
		distance = 16;
		action = "Walk";
		face = "U";
		sprite_index = get_sprite(action, face);
	} else if (keyboard_check(ord("S"))) {
		vspeed = spd;
		distance = 16;
		action = "Walk";
		face = "D";
		sprite_index = get_sprite(action, face);
	}
}