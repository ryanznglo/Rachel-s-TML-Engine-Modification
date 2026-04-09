
//var STATE=Battle_GetState();
//if !(STATE == BATTLE_STATE.TURN_PREPARATION || STATE == BATTLE_STATE.IN_TURN){
//	exit;
//}


if (array_length(push_array) > 0) {
	with (battle_soul) {
		mask_index = spr_battle_soul_precise;
		while (place_meeting(x, y, block)) {
			var _min_push = battle_board.push_array[0];
			
			for (var i = 1; i < array_length(battle_board.push_array); i++)
				_min_push = battle_board.push_array[i][0] < _min_push[0] ? battle_board.push_array[i] : _min_push;
		
			show_debug_message($"array: {battle_board.push_array}, min: {_min_push}");
			
			if (_min_push[0] == 99999) break;
			_min_push[0] = 99999;

			x = _min_push[1];
			y = _min_push[2];
		}
		mask_index = spr_battle_soul;
	}
	push_array = [];
}

