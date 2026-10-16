$execute unless data storage scr_task:runtime work.objective{kind:"item",target:$(count)} run return 0
$execute unless data storage scr_task:runtime work.held_subtask{target:$(count)} run return 0
execute unless data storage scr_task:runtime work.objective.item run return 0
execute unless data storage scr_task:runtime work.delivery.items[0].item run return 0
data modify storage scr_task:runtime work.held_match set from storage scr_task:runtime work.delivery.items[0].item
execute store success score #held_match_changed scr_tk run data modify storage scr_task:runtime work.held_match set from storage scr_task:runtime work.objective.item
execute if score #held_match_changed scr_tk matches 1 run return 0
return 1
