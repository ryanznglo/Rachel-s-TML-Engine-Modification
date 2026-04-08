function Battle_CallSoulEventHurt(dmg = 0) {
	with(battle_soul){
		event_user(BATTLE_SOUL_EVENT.HURT);
		damage = dmg
	}
	return true;


}
