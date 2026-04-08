if (_input_acceptable) {
    if _timer > 0 && can_punch
	   _timer--;
    if (
        (_dir == DIR.LEFT && _aim_x <= battle_board.x - battle_board.left - sprite_get_width(spr_battle_menu_fight_aim) / 2) ||
        (_dir == DIR.RIGHT && _aim_x >= battle_board.x + battle_board.right + sprite_get_width(spr_battle_menu_fight_aim) / 2) ||
        (_timer == 0 && _pressed < 1)
    ){
        Battle_SetMenuFightDamage(-1);
        Battle_EndMenuFightAim();
        _input_acceptable = false;

        if (instance_exists(_indicator)) instance_destroy(_indicator);
    }
	
	if (Input_IsPressed(INPUT.CONFIRM) && _pressed == 0 && !can_punch){
	    Anim_Destroy(id, "_aim_x");
		_pressed = 0
		
		alarm[0] = 1;	
		  var enemy = Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy());
          var x_hit = Battle_GetEnemyCenterPosX(enemy);
          var y_hit = Battle_GetEnemyCenterPosY(enemy);
            _indicator = instance_create_depth(x_hit, y_hit - 75, 0, battle_menu_fight_anim_glove_z);
	}
    if (Input_IsPressed(INPUT.CONFIRM) && _pressed < amount &&can_punch) {
        if (_pressed >= 0){
            var enemy = Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy());
            var x_hit = Battle_GetEnemyCenterPosX(enemy);
            var y_hit = Battle_GetEnemyCenterPosY(enemy);
            instance_create_depth(x_hit + random_range(-40, 40), y_hit + random_range(-40, 40), 0, battle_menu_fight_anim_glove_mini);
        }
        if (instance_exists(_indicator) && _pressed == 1) {
            instance_destroy(_indicator);
        }
        _pressed++;
    }

    if (_pressed == amount || (_timer == 0 && _pressed > 0)){
        _input_acceptable = false;

        if (instance_exists(_indicator)) instance_destroy(_indicator);

        var ATK = Player_GetAtkTotal();
        var DEF = Battle_GetEnemyDEF(Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy()));
        var DIST = point_distance(x, y, _aim_x, y);
        var WIDTH = sprite_get_width(spr_battle_menu_fight_bg) / 2;

        var damage = ATK - DEF + random(2);
        damage *= ((1 - DIST / WIDTH) * 2) * (_pressed / amount); 
        damage = max(1, round(damage));

        Battle_SetMenuFightDamage(damage);
        Battle_SetMenuFightAnimTime(15);
        Battle_SetMenuFightDamageTime(45);
        Battle_EndMenuFightAim();
    }
}
