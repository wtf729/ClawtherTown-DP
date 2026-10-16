data modify storage scr_task:runtime work.goal_ui.row.have set value 0
execute unless function scr_task:task/skywing/shared/inventory_ready run return 0
scoreboard players set #ui_collection scr_tk 0
data modify storage scr_task:runtime work.goal_ui.count_queue set from storage scr_task:runtime work.goal_ui.objective.items
function scr_task:ui/objectives/collection_count_loop
execute store result storage scr_task:runtime work.goal_ui.row.have int 1 run scoreboard players get #ui_collection scr_tk
return 1
