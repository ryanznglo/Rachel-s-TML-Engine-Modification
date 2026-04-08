function board_x(dir = DIR.LEFT){
	
	if !instance_exists(battle_board) {
		exit;
	}
	
	if dir == DIR.LEFT {
		return battle_board.x - battle_board.left
	}
	
	if dir == DIR.RIGHT {
		return battle_board.x + battle_board.right
	}
	
}

function board_y(dir = DIR.UP){
	
	if !instance_exists(battle_board) {
		exit;
	}
	
	if dir == DIR.UP {
		return battle_board.y - battle_board.up
	}
	
	if dir == DIR.DOWN {
		return battle_board.y + battle_board.down
	}
	
}
