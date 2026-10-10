execute unless data storage scr_task:runtime work.delivery_items[0] run return 1
data modify storage scr_task:runtime work.delivery_item set from storage scr_task:runtime work.delivery_items[0]
execute store result score #delivery_have scr_tk run function scr_task:core/inventory/count with storage scr_task:runtime work.delivery_item
execute store result score #delivery_need scr_tk run data get storage scr_task:runtime work.delivery_item.count
execute unless score #delivery_have scr_tk >= #delivery_need scr_tk run scoreboard players set #delivery_enough scr_tk 0
data remove storage scr_task:runtime work.delivery_items[0]
return run function scr_task:core/delivery/check_items
