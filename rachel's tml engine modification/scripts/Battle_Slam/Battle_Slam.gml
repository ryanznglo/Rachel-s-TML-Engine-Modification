function Battle_Slam(dir = DIR.DOWN) {
	Battle_SetSoul(battle_soul_blue);
	battle_soul_blue.dir = dir;

	var tx, ty;

	switch (dir) {
		case DIR.DOWN:
			tx = battle_soul.x;
			ty = battle_board._inst_frame_down.y;
			break;

		case DIR.UP:
			tx = battle_soul.x;
			ty = battle_board._inst_frame_up.y;
			break;

		case DIR.LEFT:
			tx = battle_board._inst_frame_left.x;
			ty = battle_soul.y;
			break;

		case DIR.RIGHT:
			tx = battle_board._inst_frame_right.x;
			ty = battle_soul.y;
			break;
	}

	battle_soul.move = abs((ty - battle_soul.y + tx - battle_soul.x) / 10);
	battle_soul.impact = 1;
}