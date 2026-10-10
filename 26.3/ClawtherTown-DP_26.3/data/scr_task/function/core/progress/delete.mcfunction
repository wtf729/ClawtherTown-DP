function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 2 run return 0
$data remove storage scr_task:players players."$(key)".tasks.$(group).$(name).progress.$(field)
$data remove storage scr_task:players players."$(key)".tasks.$(group).$(name).subtasks_done.$(field)
return 1
