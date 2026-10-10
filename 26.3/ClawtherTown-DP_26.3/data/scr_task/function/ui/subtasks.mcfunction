data modify storage scr_task:runtime work.ui_subtasks set from storage scr_task:runtime work.ctx.subtasks
function scr_task:ui/subtask_row
data remove storage scr_task:runtime work.ui_subtasks
data remove storage scr_task:runtime work.ui_progress
