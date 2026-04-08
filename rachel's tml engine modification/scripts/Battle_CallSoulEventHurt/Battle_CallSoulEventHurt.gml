function Battle_CallSoulEventHurt(dmg) {
	
	if is_undefined(dmg) || dmg == noone {
		dmg = 0
	}
	
	with(battle_soul){
		event_user(BATTLE_SOUL_EVENT.HURT);
		damage = dmg
		show_debug_message(damage)
	}
	return true;


}
