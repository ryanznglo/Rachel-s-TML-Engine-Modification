if (_input_acceptable) {
   if (!_missed && Battle_CheckMissed(_aim_x, _missed, "_aim_alpha", 1)) _missed = true;
    if (!_missed1 && Battle_CheckMissed(_aim_x2, _missed1, "_aim_alpha2", 2)) _missed1 = true;
    if (!_missed2 && Battle_CheckMissed(_aim_x3, _missed2, "_aim_alpha3", 3)) _missed2 = true;
    if (!_missed3 && Battle_CheckMissed(_aim_x4, _missed3, "_aim_alpha4", 4)) _missed3 = true;

    if (!Input_IsPressed(INPUT.CONFIRM)) {
        _hit_locked = false;
    }

    // Punch  1
    if (Input_IsPressed(INPUT.CONFIRM) && _currenthit == 0 && !_hit_locked) {
        _hit_locked = true;
        Anim_Destroy(id, "_aim_x");
        Anim_Create(id, "_aim_alpha", ANIM_TWEEN.LINEAR, ANIM_EASE.IN, 1, -1, 30);
        Anim_Create(id, "_aim_scale", ANIM_TWEEN.LINEAR, ANIM_EASE.IN, 1, 2, 90);
        alarm[0] = 1;
spr_fight_aim[0] = spr_battle_menu_fight_aim_noblack
        if (point_distance(x, y, _aim_x, y) <= 9) {
            _perfect = 1;
            audio_play_sound(snd_perfect_multihit, 0, 0);
        } else {
			
			if _aim_x >265 && _aim_x<370{
            audio_play_sound(snd_multihit, 0, 0);
			}else{
			
			_aim_color = c_red
			 alarm[0] = -1;	
			}
        }

        _currenthit = 1;
    }

    // Punch  2
    if (Input_IsPressed(INPUT.CONFIRM) && _currenthit == 1 && !_hit_locked) {
        _hit_locked = true;
        Anim_Destroy(id, "_aim_x2");
        Anim_Create(id, "_aim_alpha2", ANIM_TWEEN.LINEAR, ANIM_EASE.IN, 1, -1, 30);
        Anim_Create(id, "_aim_scale2", ANIM_TWEEN.LINEAR, ANIM_EASE.IN, 1, 2, 90);
        alarm[2] = 1;
		spr_fight_aim[1] = spr_battle_menu_fight_aim_noblack
        if (point_distance(x, y, _aim_x2, y) <= 9) {
            _perfect2 = 1;
            audio_play_sound(snd_perfect_multihit, 0, 0);
        } else {
             if _aim_x2 >265 && _aim_x2<370{
            audio_play_sound(snd_multihit, 0, 0);
			}else{
			_aim_color2 = c_red
			 alarm[2] = -1;	
			}
        }

        _currenthit = 2;
    }

    // Punch  3
    if (Input_IsPressed(INPUT.CONFIRM) && _currenthit == 2 && !_hit_locked) {
        _hit_locked = true;
        Anim_Destroy(id, "_aim_x3");
        Anim_Create(id, "_aim_alpha3", ANIM_TWEEN.LINEAR, ANIM_EASE.IN, 1, -1, 30);
        Anim_Create(id, "_aim_scale3", ANIM_TWEEN.LINEAR, ANIM_EASE.IN, 1, 2, 90);
        alarm[3] = 1;
		spr_fight_aim[2] = spr_battle_menu_fight_aim_noblack
        if (point_distance(x, y, _aim_x3, y) <= 9) {
            _perfect3 = 1;
            audio_play_sound(snd_perfect_multihit, 0, 0);
        } else {
           if _aim_x3 >265 && _aim_x3<370{
            audio_play_sound(snd_multihit, 0, 0);
			}else{
			_aim_color3 = c_red
			 alarm[3] = -1;	
			}
        }

        _currenthit = 3;
    }

    // Punch 4
    if (Input_IsPressed(INPUT.CONFIRM) && _currenthit == 3 && !_hit_locked) {
        _hit_locked = true;
        Anim_Destroy(id, "_aim_x4");
        Anim_Create(id, "_aim_alpha4", ANIM_TWEEN.LINEAR, ANIM_EASE.IN, 1, -1, 30);
        Anim_Create(id, "_aim_scale4", ANIM_TWEEN.LINEAR, ANIM_EASE.IN, 1, 2, 90);
        alarm[4] = 1;
		spr_fight_aim[3] = spr_battle_menu_fight_aim_noblack

        if (point_distance(x, y, _aim_x4, y) <= 9) {
            _perfect4 = 1;
            audio_play_sound(snd_perfect_multihit, 0, 0);
        } else {
            if _aim_x4 >265 && _aim_x4<370{
            audio_play_sound(snd_multihit, 0, 0);
			}else{
			_aim_color4 = c_red
			 alarm[4] = -1;	
			}
        }

        _currenthit = 4;
    }
 if (_missed && _missed1 && _missed2 && _missed3) {
	 		Anim_Create(_thing,"image_alpha",0,0,1,-1,40);
			Battle_SetMenuFightDamage(-1);
			Battle_SetMenuFightAnimTime(20);
			Battle_EndMenuFightAim();

			_input_acceptable=false;
 }
 
    if(_input_acceptable && _currenthit == 4) {
        var ATK = Player_GetAtkTotal();
        var DEF = Battle_GetEnemyDEF(Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy()));
        var miss_offset = x + battle_board.right + sprite_get_width(spr_battle_menu_fight_aim) / 4;

        var pos1 = (_missed  ? miss_offset : _aim_x);
        var pos2 = (_missed1 ? miss_offset : _aim_x2);
        var pos3 = (_missed2 ? miss_offset : _aim_x3);
        var pos4 = (_missed3 ? miss_offset : _aim_x4);

        var DISTANCE = point_distance(x, y, pos1, y) + point_distance(x, y, pos2, y) + point_distance(x, y, pos3, y) + point_distance(x, y, pos4, y);

        var WIDTH = sprite_get_width(spr_battle_menu_fight_bg)/2;
        var damage = ATK - DEF + random(2);
        DISTANCE = clamp(DISTANCE,-100,200);

        if(DISTANCE <= 40) {
            damage *=2.5;
        } else {
            damage *=(1 - DISTANCE / WIDTH) * 2;
        }
        if _perfect || _perfect2 || _perfect3 || _perfect4 {
            damage +=6;    
        }

        damage = round(damage);
        if(damage <= 0) {
            damage = 1;
        }
		Anim_Create(_thing,"image_alpha",0,0,1,-1,40);

        Battle_SetMenuFightDamage(damage);
        Battle_SetMenuFightAnimTime(55);
        Battle_SetMenuFightDamageTime(40);
        Battle_EndMenuFightAim();
        _input_acceptable = false;
    }
}
