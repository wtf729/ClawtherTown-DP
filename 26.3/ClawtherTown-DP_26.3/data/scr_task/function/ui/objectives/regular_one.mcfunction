$execute if data storage scr_task:runtime work.ctx.deliveries[{field:"$(field)"}] run return 0
$execute if data storage scr_task:runtime work.ctx.objectives[{field:"$(field)"}].delivery_goal unless data storage scr_task:runtime work.goal_ui{render_delivery_hold:1b} run return 0
data modify storage scr_task:runtime work.goal_ui.row set value {have:0,count:1}
data modify storage scr_task:runtime work.goal_ui.row.count set from storage scr_task:runtime work.goal_ui.subtask.target
data modify storage scr_task:runtime work.goal_ui.label set from storage scr_task:runtime work.goal_ui.subtask.label
data modify storage scr_task:runtime work.goal_ui.progress set from storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.goal_ui.progress.field set from storage scr_task:runtime work.goal_ui.subtask.field
execute if score #state scr_tk matches 2..4 store result storage scr_task:runtime work.goal_ui.row.have int 1 run function scr_task:core/progress/read with storage scr_task:runtime work.goal_ui.progress
execute if score #state scr_tk matches 3..4 run function scr_task:ui/objectives/history with storage scr_task:runtime work.goal_ui.row
data remove storage scr_task:runtime work.goal_ui.objective
$data modify storage scr_task:runtime work.goal_ui.objective set from storage scr_task:runtime work.ctx.objectives[{field:"$(field)"}]
execute if data storage scr_task:runtime work.goal_ui.objective{kind:"item"} run return run function scr_task:ui/objectives/held_item
execute if score #state scr_tk matches 1..2 if data storage scr_task:runtime work.goal_ui.objective{kind:"collection"} run function scr_task:ui/objectives/collection_count
execute if score #state scr_tk matches 2 if data storage scr_task:runtime work.goal_ui.objective{kind:"level"} run function scr_task:ui/objectives/level
execute if score #state scr_tk matches 2 if data storage scr_task:runtime work.goal_ui.objective{kind:"dimension"} run function scr_task:ui/objectives/dimension with storage scr_task:runtime work.goal_ui.objective
function scr_task:ui/objectives/quantity with storage scr_task:runtime work.goal_ui.row
function scr_task:ui/objectives/non_item_body
function scr_task:ui/objectives/append_regular
execute if data storage scr_task:runtime work.goal_ui.objective{kind:"collection"} run function scr_task:ui/objectives/collection_rows
execute if data storage scr_task:runtime work.goal_ui.objective{kind:"professions"} run function scr_task:ui/objectives/profession_rows
return 1
