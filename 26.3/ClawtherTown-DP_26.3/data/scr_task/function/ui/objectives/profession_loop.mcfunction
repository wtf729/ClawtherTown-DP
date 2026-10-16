data modify storage scr_task:runtime work.goal_ui.progress set from storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.goal_ui.progress.field set from storage scr_task:runtime work.goal_ui.profession_queue[0]
data modify storage scr_task:runtime work.goal_ui.row set value {have:0,count:10}
data modify storage scr_task:runtime work.goal_ui.row.count set from storage scr_task:runtime work.goal_ui.subtask.ui.profession_target
execute if score #state scr_tk matches 2 store result storage scr_task:runtime work.goal_ui.row.have int 1 run function scr_task:core/progress/read with storage scr_task:runtime work.goal_ui.progress
execute if score #state scr_tk matches 3..4 run function scr_task:ui/objectives/profession_history with storage scr_task:runtime work.goal_ui.progress
function scr_task:ui/objectives/quantity with storage scr_task:runtime work.goal_ui.row
function scr_task:ui/objectives/profession_label with storage scr_task:runtime work.goal_ui.progress
data modify storage scr_task:runtime work.goal_ui.stack set value {id:"minecraft:name_tag",count:1,components:{}}
# Non-item body uses the optional icon of the parent aggregate if configured.
function scr_task:ui/objectives/non_item_body
function scr_task:ui/objectives/append_regular
data remove storage scr_task:runtime work.goal_ui.profession_queue[0]
execute if data storage scr_task:runtime work.goal_ui.profession_queue[0] run return run function scr_task:ui/objectives/profession_loop
return 1
