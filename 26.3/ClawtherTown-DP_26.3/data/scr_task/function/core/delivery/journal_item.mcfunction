data modify storage scr_task:runtime work.journal_audit.item set from storage scr_task:runtime work.journal_audit.entry.items[0]
$execute unless data storage scr_task:runtime work.journal_audit.item{count:$(count)} run return 0
execute unless data storage scr_task:runtime work.journal_audit.item.item run return 0
data modify storage scr_task:runtime work.journal_audit.match set from storage scr_task:runtime work.journal_audit.goal.items[0].item
execute store success score #journal_match_changed scr_tk run data modify storage scr_task:runtime work.journal_audit.match set from storage scr_task:runtime work.journal_audit.item.item
execute if score #journal_match_changed scr_tk matches 1 run return 0
execute store result score #journal_required scr_tk run data get storage scr_task:runtime work.journal_audit.goal.items[0].count
execute unless score #journal_required scr_tk matches 1..2147483647 run return 0
$execute if data storage scr_task:runtime work.journal_audit.goal{consume:1b} unless data storage scr_task:runtime work.journal_audit.item{removed:$(count)} run return 0
return 1
