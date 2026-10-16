execute unless data storage scr_task:runtime work.delivery_sync_queue[0] run return 1
data modify storage scr_task:runtime work.ctx.delivery_goal set from storage scr_task:runtime work.delivery_sync_queue[0].id
data modify storage scr_task:runtime work.ctx.field set from storage scr_task:runtime work.delivery_sync_queue[0].field
data modify storage scr_task:runtime work.ctx.amount set value 1
execute store result score #delivery_done scr_tk run function scr_task:core/delivery/done with storage scr_task:runtime work.ctx
execute if score #delivery_done scr_tk matches 1 run function scr_task:core/progress/set with storage scr_task:runtime work.ctx
data remove storage scr_task:runtime work.delivery_sync_queue[0]
return run function scr_task:core/delivery/sync_loop
