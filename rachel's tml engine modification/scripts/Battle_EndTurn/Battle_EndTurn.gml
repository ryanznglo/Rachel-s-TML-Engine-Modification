function Battle_EndTurn() {
	if (Battle_GetState() != BATTLE_STATE.IN_TURN) return false;
	
	Battle_SetTurnNumber(Battle_GetTurnNumber() + 1);

	var _end_attack = true;


	Battle_SetTurnNumber(Battle_GetTurnNumber() + 1);

	Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.TURN_END);

	if (instance_exists(battle_turn)) {
		with (battle_turn) {
			event_user(BATTLE_TURN_EVENT.TURN_END);
		}
	}

	if (instance_exists(battle_bullet)) {
		with (battle_bullet) {
			event_user(BATTLE_BULLET_EVENT.TURN_END);
		}
	}

	if (instance_exists(battle_board_cutout)) {
		instance_destroy(battle_board_cutout);
	}

	Battle_GotoNextState();

	return true;
}