if (keyboard_check_pressed(vk_tab)) {
    _debug_open = !_debug_open;
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

    if (menu_index == 0) {
        if (keyboard_check_pressed(vk_right)) encounter_index++;
        if (keyboard_check_pressed(vk_left)) encounter_index--;

        if (encounter_index >= array_length(encounter_list)) encounter_index = 0;
        if (encounter_index < 0) encounter_index = array_length(encounter_list) - 1;
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
        }
    }
}