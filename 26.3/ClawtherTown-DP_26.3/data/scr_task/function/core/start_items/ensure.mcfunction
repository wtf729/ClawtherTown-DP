execute unless data storage scr_task:runtime work.ctx.start_items run return 1
function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 2 run return 0
execute if data storage scr_task:runtime work.record.start_items{state:"sent"} run return 1
# An interrupted send must not silently create another mail.
execute if data storage scr_task:runtime work.record.start_items run return 0
execute if score #busy scr_ml_lock matches 1 run return 0
execute store result score #starter_mark scr_tk run function scr_task:core/start_items/mark with storage scr_task:runtime work.ctx
execute unless score #starter_mark scr_tk matches 1 run return 0
data modify storage scr_mail:request mail set from storage scr_task:runtime work.ctx.start_items
execute store result score #starter_sent scr_tk run function scr_mail:send/new
execute unless score #starter_sent scr_tk matches 1 run function scr_task:core/start_items/unmark with storage scr_task:runtime work.ctx
execute unless score #starter_sent scr_tk matches 1 run return 0
return run function scr_task:core/start_items/receipt with storage scr_task:runtime work.ctx
