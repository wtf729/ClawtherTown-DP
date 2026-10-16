# Pure validation of the current single-item schema: -1 frozen, 0 valid partial, 1 all done.
data modify storage scr_task:runtime work.journal_audit set value {}
$data modify storage scr_task:runtime work.journal_audit.record set from storage scr_task:players players."$(key)".tasks.$(group).$(name)
execute store result score #journal_status scr_tk run function scr_task:core/delivery/journal_audit
data remove storage scr_task:runtime work.journal_audit
return run scoreboard players get #journal_status scr_tk
