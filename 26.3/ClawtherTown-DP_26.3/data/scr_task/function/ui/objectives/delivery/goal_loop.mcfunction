execute unless data storage scr_task:runtime work.goal_ui.queue[0] run return 1
data modify storage scr_task:runtime work.goal_ui.goal set from storage scr_task:runtime work.goal_ui.queue[0]
function scr_task:ui/objectives/delivery/held_row with storage scr_task:runtime work.goal_ui.goal
function scr_task:ui/objectives/delivery/item_row

data remove storage scr_task:runtime work.goal_ui.queue[0]
return run function scr_task:ui/objectives/delivery/goal_loop
