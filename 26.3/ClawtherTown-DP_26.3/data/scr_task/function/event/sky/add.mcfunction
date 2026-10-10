data modify storage scr_task:runtime work.ctx.field set from storage scr_task:runtime work.event_task.field
data modify storage scr_task:runtime work.ctx.amount set value 1
function scr_task:core/progress/add with storage scr_task:runtime work.ctx
