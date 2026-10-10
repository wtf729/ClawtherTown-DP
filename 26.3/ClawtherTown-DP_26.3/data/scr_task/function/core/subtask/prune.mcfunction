# Selected registered Task has no sub-objectives. Drop obsolete notification marks only.
$data remove storage scr_task:players players."$(key)".tasks.$(group).$(name).subtasks_done
return 1
