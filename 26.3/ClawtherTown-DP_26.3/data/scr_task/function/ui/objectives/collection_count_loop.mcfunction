data modify storage scr_task:runtime work.goal_ui.count_item set value {}
data modify storage scr_task:runtime work.goal_ui.count_item.item set from storage scr_task:runtime work.goal_ui.count_queue[0]
execute store result score #ui_collection_have scr_tk run function scr_task:core/inventory/count with storage scr_task:runtime work.goal_ui.count_item
execute if score #ui_collection_have scr_tk matches 1.. run scoreboard players add #ui_collection scr_tk 1
data remove storage scr_task:runtime work.goal_ui.count_queue[0]
execute if data storage scr_task:runtime work.goal_ui.count_queue[0] run return run function scr_task:ui/objectives/collection_count_loop
return 1
