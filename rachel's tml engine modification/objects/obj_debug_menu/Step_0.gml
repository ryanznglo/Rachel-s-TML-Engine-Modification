if (keyboard_check_pressed(vk_tab)) {
    _debug_open = !_debug_open;

	if (_debug_open && instance_exists(battle)) {
		debug_turn = Battle_GetTurnNumber();
	}
}

if (_debug_open) {

    if (keyboard_check_pressed(vk_down)) {
        menu_index++;
    }

    if (keyboard_check_pressed(vk_up)) {
        menu_index--;
    }

    if (menu_index >= array_length(menu_items)) menu_index = 0;
    if (menu_index < 0) menu_index = array_length(menu_items) - 1;

	var setting = menu_settings[menu_index];

	if (is_struct(setting)) {

		var val = setting.value();

		var can_edit = true;

		if (setting.type == "number" && !instance_exists(battle)) {
			can_edit = false;
		}

		if (can_edit) {

			if (keyboard_check_pressed(vk_right)) val++;
			if (keyboard_check_pressed(vk_left)) val--;

			switch (setting.type) {

				case "number":
					val = clamp(val, setting.min, setting.max);
					break;

				case "list":
					var len = array_length(setting.list);

					if (val >= len) val = 0;
					if (val < 0) val = len - 1;
					break;
			}

			setting.set(val);
		}
	}

    if (Input_IsPressed(INPUT.CONFIRM)) {
        switch (menu_index) {

            case 0:
                var encounter_id = encounter_list[encounter_index];
                Encounter_Start(encounter_id);
                break;

            case 1:
			
				if !instance_exists(battle) {
					audio_play_sound(snd_hurt, 0, false)
					exit;
				}
				
                Attack_End()
				break;

            case 2:
			
				if !instance_exists(battle) {
					audio_play_sound(snd_hurt, 0, false)
					exit;
				}
				
                Battle_End()
				break;
				
			case 3:

				if !instance_exists(battle) {
					audio_play_sound(snd_hurt, 0, false)
					exit;
				}
				else
				{
					audio_play_sound(snd_bell, 0, false)
				}

				Battle_SetTurnNumber(debug_turn);

				break;
        }
    }
}