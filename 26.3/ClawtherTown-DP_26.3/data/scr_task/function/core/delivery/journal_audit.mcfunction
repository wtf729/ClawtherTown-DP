execute if data storage scr_task:runtime work.journal_audit.record.delivery_lock run return -1
execute if data storage scr_task:runtime work.journal_audit.record.deliveries unless data storage scr_task:runtime work.journal_audit.record{deliveries:{}} run return -1
scoreboard players set #journal_saved scr_tk 0
scoreboard players set #journal_present scr_tk 0
scoreboard players set #journal_total scr_tk 0
execute if data storage scr_task:runtime work.journal_audit.record.deliveries store result score #journal_saved scr_tk run data get storage scr_task:runtime work.journal_audit.record.deliveries
data modify storage scr_task:runtime work.journal_audit.queue set from storage scr_task:runtime work.ctx.deliveries
execute if data storage scr_task:runtime work.journal_audit.queue[0] store result score #journal_total scr_tk run data get storage scr_task:runtime work.journal_audit.queue
execute if data storage scr_task:runtime work.journal_audit.queue[0] unless function scr_task:core/delivery/journal_loop run return -1
# Unknown or malformed receipts cannot authorize a second deduction; require explicit admin diagnosis/reset.
execute unless score #journal_saved scr_tk = #journal_present scr_tk run return -1
execute if score #journal_total scr_tk matches 1.. if score #journal_present scr_tk = #journal_total scr_tk run return 1
return 0
