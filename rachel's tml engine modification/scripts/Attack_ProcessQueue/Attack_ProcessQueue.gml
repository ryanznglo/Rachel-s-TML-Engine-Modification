function Attack_ProcessQueue() {
	if (!variable_global_exists("attack_queue")) return false;
	
	if (ds_queue_empty(global.attack_queue)) return false;

	var next_attack = ds_queue_dequeue(global.attack_queue);

	global.pending_attack = next_attack;
	global.request_attack_start = true;

	return true;
}