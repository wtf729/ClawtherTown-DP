# Sole item receipt; retain the original guarded clear and durable removed/cursor writes.
data modify storage scr_task:runtime work.delivery_item set from storage scr_task:runtime work.delivery.items[0]
data modify storage scr_task:runtime work.delivery_item.key set from storage scr_task:runtime work.ctx.key
data modify storage scr_task:runtime work.delivery_item.group set from storage scr_task:runtime work.ctx.group
data modify storage scr_task:runtime work.delivery_item.name set from storage scr_task:runtime work.ctx.name
data modify storage scr_task:runtime work.delivery_item.delivery_goal set from storage scr_task:runtime work.ctx.delivery_goal
data modify storage scr_task:runtime work.delivery_item.cursor set value 0
scoreboard players set #delivery_cursor scr_tk 0
return run function scr_task:core/delivery/remove_one with storage scr_task:runtime work.delivery_item
