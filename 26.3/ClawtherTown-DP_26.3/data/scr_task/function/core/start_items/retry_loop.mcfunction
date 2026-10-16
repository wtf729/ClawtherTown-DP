execute unless data storage scr_task:runtime work.start_items_queue[0] run return 1
data modify storage scr_task:runtime work.ctx set from storage scr_task:runtime work.start_items_queue[0]
data modify storage scr_task:runtime work.ctx.key set from storage scr_task:runtime work.key
function scr_task:core/start_items/ensure
data remove storage scr_task:runtime work.start_items_queue[0]
return run function scr_task:core/start_items/retry_loop
