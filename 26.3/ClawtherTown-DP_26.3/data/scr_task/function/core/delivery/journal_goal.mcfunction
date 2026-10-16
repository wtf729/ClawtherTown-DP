execute unless data storage scr_task:runtime work.journal_audit.goal.items[0] run return 0
execute if data storage scr_task:runtime work.journal_audit.goal.items[1] run return 0
data remove storage scr_task:runtime work.journal_audit.entry
$data modify storage scr_task:runtime work.journal_audit.entry set from storage scr_task:runtime work.journal_audit.record.deliveries.$(id)
execute unless data storage scr_task:runtime work.journal_audit.entry run return 1
execute unless data storage scr_task:runtime work.journal_audit.entry{state:"done",cursor:0} run return 0
execute store result score #journal_item_size scr_tk run data get storage scr_task:runtime work.journal_audit.entry.items
execute unless score #journal_item_size scr_tk matches 1 run return 0
execute store result score #journal_item_valid scr_tk run function scr_task:core/delivery/journal_item with storage scr_task:runtime work.journal_audit.goal.items[0]
execute unless score #journal_item_valid scr_tk matches 1 run return 0
scoreboard players add #journal_present scr_tk 1
return 1
