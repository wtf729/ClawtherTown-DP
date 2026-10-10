data modify storage scr_task:runtime work.refresh_saved set from storage scr_task:runtime work.ctx
function scr_task:core/chapter/refresh
data modify storage scr_task:runtime work.unlock_queue set from storage scr_task:runtime catalog
execute if data storage scr_task:runtime work.unlock_queue[0] run function scr_task:core/unlock/loop
data modify storage scr_task:runtime work.ctx set from storage scr_task:runtime work.refresh_saved
data remove storage scr_task:runtime work.refresh_saved
data remove storage scr_task:runtime work.unlock_queue
return 1
