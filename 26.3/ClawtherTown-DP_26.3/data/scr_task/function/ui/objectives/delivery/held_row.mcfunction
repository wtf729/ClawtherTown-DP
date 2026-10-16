data remove storage scr_task:runtime work.goal_ui.subtask
$data modify storage scr_task:runtime work.goal_ui.subtask set from storage scr_task:runtime work.ctx.subtasks[{field:"$(held_field)"}]
execute unless data storage scr_task:runtime work.goal_ui.subtask.field run return 0
data modify storage scr_task:runtime work.goal_ui.render_delivery_hold set value 1b
function scr_task:ui/objectives/regular_one with storage scr_task:runtime work.goal_ui.subtask
data remove storage scr_task:runtime work.goal_ui.render_delivery_hold
return 1
