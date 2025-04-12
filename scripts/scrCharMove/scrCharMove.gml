function scrCharMove(spd, dir){
	var xTo = x + lengthdir_x(spd, dir);
	var yTo = y + lengthdir_y(spd, dir);
	
	if (place_free(xTo, yTo)) {
		x = xTo;
		y = yTo;
	}
}