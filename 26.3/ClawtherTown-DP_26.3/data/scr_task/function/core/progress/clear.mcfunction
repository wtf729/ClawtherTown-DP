$data remove storage scr_task:players players."$(key)".tasks.$(group).$(name).progress
$data remove storage scr_task:players players."$(key)".tasks.$(group).$(name).subtasks_done
return 1
