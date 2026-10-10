data modify storage scr_task:runtime work.ctx.field set value "count"
execute if data storage scr_task:runtime work.ctx.ui.progress_field run data modify storage scr_task:runtime work.ctx.field set from storage scr_task:runtime work.ctx.ui.progress_field
function scr_task:core/progress/read with storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.ctx.value set from storage scr_task:runtime work.value
function scr_task:ui/progress_text with storage scr_task:runtime work.ctx
