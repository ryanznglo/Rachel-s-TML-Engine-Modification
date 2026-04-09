if(pushSoulEnabled){
    // Game frozen protector.
    var _try_times=0;
	var _soul_x = battle_soul.x;
	var _soul_y = battle_soul.y;
	battle_soul.mask_index = spr_battle_soul_precise;
    while(place_meeting(x,y,battle_soul)&&_try_times<10000){
        battle_soul.x+=lengthdir_x(0.1,pushSoulDirection+image_angle);
        battle_soul.y+=lengthdir_y(0.1,pushSoulDirection+image_angle);
        _try_times++;
    }
	battle_soul.mask_index = spr_battle_soul;
	
	if (_try_times > 0)
		array_push(battle_board.push_array, [_try_times, battle_soul.x, battle_soul.y, pushSoulDirection]);
		
	battle_soul.x = _soul_x;
	battle_soul.y = _soul_y;
}