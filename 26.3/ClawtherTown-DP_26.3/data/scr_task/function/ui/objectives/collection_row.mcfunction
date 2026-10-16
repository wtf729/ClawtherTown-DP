data modify storage scr_task:runtime work.goal_ui.row set value {have:0,count:1}
data modify storage scr_task:runtime work.goal_ui.count_item set value {}
data modify storage scr_task:runtime work.goal_ui.count_item.item set from storage scr_task:runtime work.goal_ui.candidate_queue[0]
scoreboard players set #ui_candidate_have scr_tk 0
execute if score #state scr_tk matches 1..2 if function scr_task:task/skywing/shared/inventory_ready store result score #ui_candidate_have scr_tk run function scr_task:core/inventory/count with storage scr_task:runtime work.goal_ui.count_item
execute if score #state scr_tk matches 1..2 if score #ui_candidate_have scr_tk matches 1.. run data modify storage scr_task:runtime work.goal_ui.row.have set value 1
execute if score #state scr_tk matches 3..4 run data modify storage scr_task:runtime work.goal_ui.row.have set value "?"
function scr_task:ui/objectives/quantity with storage scr_task:runtime work.goal_ui.row
data modify storage scr_task:runtime work.goal_ui.stack set value {count:1}
data modify storage scr_task:runtime work.goal_ui.stack.id set from storage scr_task:runtime work.goal_ui.candidate_queue[0]
data remove storage scr_task:runtime work.goal_ui.label
function scr_task:ui/objectives/item_body
data modify storage scr_mail:preview work.line.description.contents.extra append value {translate:"gui.scr.task.goal.collection.candidate",fallback:"候选",color:"gray"}
function scr_task:ui/objectives/append_regular
data remove storage scr_task:runtime work.goal_ui.candidate_queue[0]
execute if data storage scr_task:runtime work.goal_ui.candidate_queue[0] run return run function scr_task:ui/objectives/collection_row
return 1
