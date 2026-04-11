function Attack_Init(){
	global.current_attack = noone;
	global.attack_queue = ds_queue_create();
	global.attack_registry = ds_map_create();
	
	global.request_attack_start = false;
	global.pending_attack = undefined;
	
	global.request_turn_end = false


	// register your attacks here
	Attack_Register("example", Attack_Example);
}