execute if data storage scr_task:runtime work.ctx{inventory_required:1b} unless function scr_task:task/skywing/shared/inventory_ready run return 0
data modify storage scr_task:runtime work.check_queue set from storage scr_task:runtime work.ctx.subtasks
return run function scr_task:task/skywing/shared/check_loop
