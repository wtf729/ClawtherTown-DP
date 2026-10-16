function scr_task:ui/notification/show {kind:"ready_to_complete"}
$data remove storage scr_task:players players."$(key)".tasks.$(group).$(name).deferred_ready_to_complete
