scoreboard players set #collection scr_tk 0
data modify storage scr_task:runtime work.collection_queue set from storage scr_task:runtime work.objective.items
function scr_task:task/skywing/shared/collection_loop
execute store result storage scr_task:runtime work.count int 1 run scoreboard players get #collection scr_tk
