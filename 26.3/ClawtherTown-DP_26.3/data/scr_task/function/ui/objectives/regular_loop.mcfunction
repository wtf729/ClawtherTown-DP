data modify storage scr_task:runtime work.goal_ui.subtask set from storage scr_task:runtime work.goal_ui.regular_queue[0]
execute store result score #ui_not_delivery scr_tk run function scr_task:ui/objectives/regular_one with storage scr_task:runtime work.goal_ui.subtask
data remove storage scr_task:runtime work.goal_ui.regular_queue[0]
execute if data storage scr_task:runtime work.goal_ui.regular_queue[0] run return run function scr_task:ui/objectives/regular_loop
return 1
