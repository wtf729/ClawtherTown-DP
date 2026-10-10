function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless data storage scr_task:runtime work.record.start_items{state:"sent"} run return 0
execute unless data storage scr_task:runtime work.record.start_items.event_id run return 0
data modify storage scr_task:runtime work.start_mail set from storage scr_task:runtime work.record.start_items
data modify storage scr_task:runtime work.start_mail.key set from storage scr_task:runtime work.ctx.key
return run function scr_task:core/start_items/claimed_bound with storage scr_task:runtime work.start_mail
