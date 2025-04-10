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
        if (!collision_line(x, y, x + 16, y, objSolid, false, true) &&
		    !collision_line(x, y, x + 16, y, objSolid1, false, true) &&
			!collision_line(x, y, x + 16, y, objSolid2, false, true) &&
		    !collision_line(x, y, x + 16, y, objSolid3, false, true)&&
			!collision_line(x, y, x + 16, y, objSolid4, false, true) &&
		    !collision_line(x, y, x + 16, y, objSolid5, false, true) &&
			!collision_line(x, y, x + 16, y, objSolid6, false, true)) {
            hspeed = spd;
            distance = 16;
            sprite_index = sprPlayerWalkR;
        }
    } else if (keyboard_check(ord("A"))) {
        if (!collision_line(x, y, x - 16, y, objSolid, false, true) &&
			!collision_line(x, y, x - 16, y, objSolid1, false, true) &&
			!collision_line(x, y, x - 16, y, objSolid2, false, true) &&
		    !collision_line(x, y, x - 16, y, objSolid3, false, true)&&
			!collision_line(x, y, x - 16, y, objSolid4, false, true) &&
		    !collision_line(x, y, x - 16, y, objSolid5, false, true) &&
			!collision_line(x, y, x - 16, y, objSolid6, false, true)) {
            hspeed = -spd;
            distance = 16;
            sprite_index = sprPlayerWalkL;
        }
    } else if (keyboard_check(ord("W"))) {
        if (!collision_line(x, y, x, y - 16, objSolid, false, true) &&
			!collision_line(x, y, x, y - 16, objSolid1, false, true) &&
			!collision_line(x, y, x, y - 16, objSolid2, false, true) &&
		    !collision_line(x, y, x, y - 16, objSolid3, false, true) &&
			!collision_line(x, y, x, y - 16, objSolid4, false, true) &&
		    !collision_line(x, y, x, y - 16, objSolid5, false, true) &&
			!collision_line(x, y, x, y - 16, objSolid6, false, true)) {
            vspeed = -spd;
            distance = 16;
            sprite_index = sprPlayerWalkU;
        }
    } else if (keyboard_check(ord("S"))) {
        if (!collision_line(x, y, x, y + 16, objSolid, false, true)&&
			!collision_line(x, y, x, y + 16, objSolid1, false, true) &&
			!collision_line(x, y, x, y + 16, objSolid2, false, true) &&
		    !collision_line(x, y, x, y + 16, objSolid3, false, true) &&
			!collision_line(x, y, x, y + 16, objSolid4, false, true) &&
		    !collision_line(x, y, x, y + 16, objSolid5, false, true) &&
			!collision_line(x, y, x, y + 16, objSolid6, false, true)) {
            vspeed = spd;
            distance = 16;
            sprite_index = sprPlayerWalkD;
        }
    } else {
        // No se está moviendo: sprite de estar quieto
        sprite_index = sprPlayerIdleD;
    }
	
		// Suponiendo que el sprite mide 32x32 px, ajusta si es diferente
		x = clamp(x, 0, room_width)
		y = clamp(y, 0, room_height)
}