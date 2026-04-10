///@arg text
function Dialog_Add() {
	show_debug_message("DIALOG ADD OK");
	ds_queue_enqueue(global._dialog_queue,argument[0]);
	
	show_debug_message("QUEUE REF = " + string(global._dialog_queue));
	show_debug_message("SIZE AFTER ADD = " + string(ds_queue_size(global._dialog_queue)));
	
	return true;


}
