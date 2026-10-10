execute unless data storage scr_task:runtime work.ui_delivery_items[0] run return 1
data modify storage scr_task:runtime work.ui_delivery_item set from storage scr_task:runtime work.ui_delivery_items[0]
data modify storage scr_task:runtime work.ui_delivery_item.have set value 0
execute store result score #delivery_profile scr_tk run function scr_task:core/delivery/profile_ready with storage scr_task:runtime work.ctx.delivery_policy
execute if score #delivery_profile scr_tk matches 1 store result storage scr_task:runtime work.ui_delivery_item.have int 1 run function scr_task:core/inventory/count with storage scr_task:runtime work.ui_delivery_item
execute if score #ui_done scr_tk matches 1 run data modify storage scr_task:runtime work.ui_delivery_item.have set from storage scr_task:runtime work.ui_delivery_item.count
function scr_task:ui/delivery/item_row with storage scr_task:runtime work.ui_delivery_item
data remove storage scr_task:runtime work.ui_delivery_items[0]
return run function scr_task:ui/delivery/items
