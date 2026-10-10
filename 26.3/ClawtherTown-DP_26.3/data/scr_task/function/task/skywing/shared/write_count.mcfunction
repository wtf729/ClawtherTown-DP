data modify storage scr_task:runtime work.ctx.field set from storage scr_task:runtime work.objective.field
data modify storage scr_task:runtime work.ctx.amount set from storage scr_task:runtime work.count
function scr_task:core/progress/set with storage scr_task:runtime work.ctx
