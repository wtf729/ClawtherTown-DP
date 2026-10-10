data modify storage scr_task:runtime work.advanced_task set from storage scr_task:runtime work.advanced_queue[0]
execute if data storage scr_task:runtime work.advanced_task{group:"skywing"} if data storage scr_task:runtime work.advanced_task.category run function scr_task:ui/skywing/advanced_row
data remove storage scr_task:runtime work.advanced_queue[0]
execute if data storage scr_task:runtime work.advanced_queue[0] run return run function scr_task:ui/skywing/advanced_loop
return 1
