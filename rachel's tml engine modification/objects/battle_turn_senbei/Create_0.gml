//Create event, This is the best code.
Battle_SetTurnInfo(BATTLE_TURN.TIME, -1);

turn = Battle_GetTurnNumber();
timer = 0;
start = 0;

switch turn {
	case 0:
		Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT, 120);
		Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT, 120);
		Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP, 120);
		break;
	case 1:
		Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT, 80);
		Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT, 80);
		Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP, 80);
		Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN, 80);
		break;
	default:
		break;
}