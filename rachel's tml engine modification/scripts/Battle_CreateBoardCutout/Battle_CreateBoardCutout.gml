function Battle_CreateBoardCutout(_up, _down, _left, _right, _x, _y, _time = -1){
	var _inst = instance_create_depth(_x, _y, 0, battle_board_cutout);
	_inst.up = _up;
	_inst.down = _down;
	_inst.left = _left;
	_inst.right = _right;
	_inst.alarm[0] = _time;
	
	return _inst;
}