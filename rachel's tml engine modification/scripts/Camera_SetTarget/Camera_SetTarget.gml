function Camera_SetTarget(_target, _speed = 0.1) {
	with (camera) {
		target = _target;
		follow_speed = _speed;
	}
}