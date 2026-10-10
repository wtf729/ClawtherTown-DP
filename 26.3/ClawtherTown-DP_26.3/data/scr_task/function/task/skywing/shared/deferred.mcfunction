function scr_task:ui/notification/show {kind:"completed"}
$data remove storage scr_task:players players."$(key)".tasks.$(group).$(name).deferred_completed
