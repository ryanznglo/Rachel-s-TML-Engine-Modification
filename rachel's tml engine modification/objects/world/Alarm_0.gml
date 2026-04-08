with (char_player) {
	var xx = Storage_GetStaticGeneral().Get(FLAG_STATIC_PLAYER_X, x);
	var yy = Storage_GetStaticGeneral().Get(FLAG_STATIC_PLAYER_Y, y);
	
	x = xx
	y = yy
}