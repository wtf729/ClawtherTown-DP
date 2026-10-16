data modify storage scr_task:runtime work.goal_ui.level_ctx.id set from storage scr_task:runtime work.goal_ui.level_queue[0]
function scr_task:ui/objectives/level_one with storage scr_task:runtime work.goal_ui.level_ctx
data remove storage scr_task:runtime work.goal_ui.level_queue[0]
execute if data storage scr_task:runtime work.goal_ui.level_queue[0] run return run function scr_task:ui/objectives/level_loop
return 1
