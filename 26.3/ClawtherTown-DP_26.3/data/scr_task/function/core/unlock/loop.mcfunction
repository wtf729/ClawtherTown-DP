data modify storage scr_task:runtime work.ctx set from storage scr_task:runtime work.unlock_queue[0]
data modify storage scr_task:runtime work.ctx.key set from storage scr_task:runtime work.key
execute unless data storage scr_task:runtime work.ctx.subtasks[0] run function scr_task:core/subtask/prune with storage scr_task:runtime work.ctx
function scr_task:core/unlock/one with storage scr_task:runtime work.ctx
data remove storage scr_task:runtime work.unlock_queue[0]
execute if data storage scr_task:runtime work.unlock_queue[0] run return run function scr_task:core/unlock/loop
return 1
