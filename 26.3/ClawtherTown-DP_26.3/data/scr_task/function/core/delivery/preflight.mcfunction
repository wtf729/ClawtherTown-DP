data modify storage scr_task:runtime work.delivery_items set from storage scr_task:runtime work.delivery.items
scoreboard players set #delivery_enough scr_tk 1
function scr_task:core/delivery/check_items
return run scoreboard players get #delivery_enough scr_tk
