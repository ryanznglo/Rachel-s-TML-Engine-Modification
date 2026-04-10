function Camera_Zoom(_z, _speed = 0.1) {
	with (camera) {
		zoom_target = _z;
		zoom_speed = _speed;
	}
}