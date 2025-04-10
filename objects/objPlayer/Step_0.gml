if (speed != 0){
	distance -= spd;
}

if (distance <= 0){
	speed = 0;
	action = "Idle";
	face = "D";
}

if (speed == 0) {
    if (keyboard_check(ord("D"))) {
        if (!collision_line(x, y, x + 16, y, objSolidWater1N1, false, true)) {
            hspeed = spd;
            distance = 16;
            sprite_index = sprPlayerWalkR;
        }
    } else if (keyboard_check(ord("A"))) {
        if (!collision_line(x, y, x - 16, y, objSolidWater1N1, false, true)) {
            hspeed = -spd;
            distance = 16;
            sprite_index = sprPlayerWalkL;
        }
    } else if (keyboard_check(ord("W"))) {
        if (!collision_line(x, y, x, y - 16, objSolidWater1N1, false, true)) {
            vspeed = -spd;
            distance = 16;
            sprite_index = sprPlayerWalkU;
        }
    } else if (keyboard_check(ord("S"))) {
        if (!collision_line(x, y, x, y + 16, objSolidWater1N1, false, true)) {
            vspeed = spd;
            distance = 16;
            sprite_index = sprPlayerWalkD;
        }
    } else {
        // No se está moviendo: sprite de estar quieto
        sprite_index = sprPlayerIdleD;
    }
}