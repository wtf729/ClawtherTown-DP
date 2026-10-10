data modify storage scr_task:runtime work.ui_progress set from storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.ui_progress.field set from storage scr_task:runtime work.ui_subtasks[0].field
data modify storage scr_task:runtime work.ui_progress.goal set from storage scr_task:runtime work.ui_subtasks[0].target
function scr_task:core/progress/read with storage scr_task:runtime work.ui_progress
data modify storage scr_task:runtime work.ui_progress.value set from storage scr_task:runtime work.value
data modify storage scr_task:runtime work.row set value {type:"minecraft:plain_message",width:420,contents:{text:"",color:"white",extra:[]}}
data modify storage scr_task:runtime work.label set value {text:""}
data modify storage scr_task:runtime work.label.text set from storage scr_task:runtime work.ui_progress.field
execute if data storage scr_task:runtime work.ui_subtasks[0].label run data modify storage scr_task:runtime work.label set from storage scr_task:runtime work.ui_subtasks[0].label
data modify storage scr_task:runtime work.row.contents.extra append from storage scr_task:runtime work.label
function scr_task:ui/progress_text with storage scr_task:runtime work.ui_progress
data modify storage scr_task:runtime work.dialog.body append from storage scr_task:runtime work.row
data remove storage scr_task:runtime work.ui_subtasks[0]
execute if data storage scr_task:runtime work.ui_subtasks[0] run function scr_task:ui/subtask_row
