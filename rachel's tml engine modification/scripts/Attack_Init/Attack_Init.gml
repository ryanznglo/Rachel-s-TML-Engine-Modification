function Attack_Init(){
	global.current_attack = noone;
	global.attack_queue = ds_queue_create();
	global.attack_registry = ds_map_create();

	Attack_Register("example", Attack_Example);
}