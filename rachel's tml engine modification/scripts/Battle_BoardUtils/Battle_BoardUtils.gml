// These functions are for quality of life
// Board_X can take either DIR.LEFT or DIR.RIGHT to get the left or right edge of the board.
// Board_Y can take either DIR.UP or DIR.DOWN to get the up or down edge of the board.

function Board_X(dir = DIR.LEFT){
	
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

function Board_Y(dir = DIR.UP){
	
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
