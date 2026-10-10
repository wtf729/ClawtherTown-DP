data modify storage scr_task:runtime work.prereq set from storage scr_task:runtime work.prereqs[0]
data modify storage scr_task:runtime work.prereq.key set from storage scr_task:runtime work.key
execute store result score #prereq scr_tk run function scr_task:core/unlock/check with storage scr_task:runtime work.prereq
execute unless score #prereq scr_tk matches 1 run return 0
data remove storage scr_task:runtime work.prereqs[0]
execute if data storage scr_task:runtime work.prereqs[0] run return run function scr_task:core/unlock/prerequisites
return 1
