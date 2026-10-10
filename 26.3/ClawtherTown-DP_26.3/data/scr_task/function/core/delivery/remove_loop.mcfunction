execute unless data storage scr_task:runtime work.delivery_items[0] run return 1
data modify storage scr_task:runtime work.delivery_item set from storage scr_task:runtime work.delivery_items[0]
data modify storage scr_task:runtime work.delivery_item.key set from storage scr_task:runtime work.ctx.key
data modify storage scr_task:runtime work.delivery_item.group set from storage scr_task:runtime work.ctx.group
data modify storage scr_task:runtime work.delivery_item.name set from storage scr_task:runtime work.ctx.name
data modify storage scr_task:runtime work.delivery_item.goal set from storage scr_task:runtime work.ctx.goal
execute store result storage scr_task:runtime work.delivery_item.cursor int 1 run scoreboard players get #delivery_cursor scr_tk
execute store result score #removed_ok scr_tk run function scr_task:core/delivery/remove_one with storage scr_task:runtime work.delivery_item
execute unless score #removed_ok scr_tk matches 1 run scoreboard players set #delivery_clean scr_tk 0
execute unless score #removed_ok scr_tk matches 1 run return 0
scoreboard players add #delivery_cursor scr_tk 1
data remove storage scr_task:runtime work.delivery_items[0]
return run function scr_task:core/delivery/remove_loop
