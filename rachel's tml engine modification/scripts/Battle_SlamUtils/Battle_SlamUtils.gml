// I might optimize this soon, I'm not sure if I like how I formatted this.

function Battle_Slam(dir = DIR.DOWN){
	Battle_SetSoul(battle_soul_blue)
	battle_soul_blue.dir = dir
	
	if dir == DIR.DOWN {
		battle_soul.move = abs((battle_board._inst_frame_down.y - battle_soul.y) / 10)
	}
	
	if dir == DIR.UP {
		battle_soul.move = abs((battle_board._inst_frame_up.y - battle_soul.y) / 10)
	}
	
	if dir == DIR.LEFT {
		battle_soul.move = abs((battle_board._inst_frame_left.x - battle_soul.x) / 10)
	}
	
	if dir == DIR.RIGHT {
		battle_soul.move = abs((battle_board._inst_frame_right.x - battle_soul.x) / 10)
	}
	
	battle_soul.impact = 1
}