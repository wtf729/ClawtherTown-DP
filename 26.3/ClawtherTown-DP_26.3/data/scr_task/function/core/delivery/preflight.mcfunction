# Exactly one matching requirement; no compound material queue.
execute unless data storage scr_task:runtime work.delivery.items[0] run return 0
execute if data storage scr_task:runtime work.delivery.items[1] run return 0
data modify storage scr_task:runtime work.delivery_item set from storage scr_task:runtime work.delivery.items[0]
execute store result score #delivery_have scr_tk run function scr_task:core/inventory/count with storage scr_task:runtime work.delivery_item
execute store result score #delivery_need scr_tk run data get storage scr_task:runtime work.delivery_item.count
execute unless score #delivery_need scr_tk matches 1..2147483647 run return 0
return run execute if score #delivery_have scr_tk >= #delivery_need scr_tk
