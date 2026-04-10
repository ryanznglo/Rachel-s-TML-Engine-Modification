function Dialog_Get() {
    return ds_queue_dequeue(global._dialog_queue);
}