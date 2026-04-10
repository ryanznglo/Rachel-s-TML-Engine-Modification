function Battle_EndTurn() {
	if (Battle_GetState() != BATTLE_STATE.IN_TURN) return false;

	var _end_attack = true;

	if (variable_global_exists("current_attack")) {
		global.current_attack = noone;
	}

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

	if (!variable_global_exists("attack_queue")) {
		global.attack_queue = ds_queue_create();
	}

	if (!ds_queue_empty(global.attack_queue)) {

		var next_attack = ds_queue_dequeue(global.attack_queue);

		Attack_Run(next_attack);

		return true;
	}

	Battle_GotoNextState();

	return true;
}