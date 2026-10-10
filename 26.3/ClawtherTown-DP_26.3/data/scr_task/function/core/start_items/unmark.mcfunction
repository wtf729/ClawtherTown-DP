# Called only after send/new explicitly returned failure. No mail was accepted.
$data remove storage scr_task:players players."$(key)".tasks.$(group).$(name).start_items
