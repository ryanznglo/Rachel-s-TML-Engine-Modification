function Attack_End() {
	global.current_attack = noone;
	global.request_attack_start = false;

	// just signal end of attack flow
	global.request_turn_end = true;
}