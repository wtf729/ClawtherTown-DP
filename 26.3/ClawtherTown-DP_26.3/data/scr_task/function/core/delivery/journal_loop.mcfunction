data modify storage scr_task:runtime work.journal_audit.goal set from storage scr_task:runtime work.journal_audit.queue[0]
execute store result score #journal_goal_valid scr_tk run function scr_task:core/delivery/journal_goal with storage scr_task:runtime work.journal_audit.goal
execute unless score #journal_goal_valid scr_tk matches 1 run return 0
data remove storage scr_task:runtime work.journal_audit.queue[0]
execute if data storage scr_task:runtime work.journal_audit.queue[0] run return run function scr_task:core/delivery/journal_loop
return 1
