function Camera_MoveTo(_x, _y, _speed = 0.1) {
	with (camera) {
		target = noone;
		move_target_x = _x;
		move_target_y = _y;
		move_speed = _speed;
	}
}