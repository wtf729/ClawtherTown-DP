data modify storage scr_task:runtime work.collection_item set value {}
data modify storage scr_task:runtime work.collection_item.item set from storage scr_task:runtime work.collection_queue[0]
execute store result score #collection_have scr_tk run function scr_task:core/inventory/count with storage scr_task:runtime work.collection_item
execute if score #collection_have scr_tk matches 1.. run scoreboard players add #collection scr_tk 1
data remove storage scr_task:runtime work.collection_queue[0]
execute if data storage scr_task:runtime work.collection_queue[0] run return run function scr_task:task/skywing/shared/collection_loop
return 1
