execute unless data storage scr_task:runtime work.check_queue[0] run return 1
data modify storage scr_task:runtime work.check set from storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.check.field set from storage scr_task:runtime work.check_queue[0].field
execute store result score #sky_check_value scr_tk run function scr_task:core/progress/read with storage scr_task:runtime work.check
execute store result score #sky_check_target scr_tk run data get storage scr_task:runtime work.check_queue[0].target
execute unless score #sky_check_value scr_tk >= #sky_check_target scr_tk run return 0
data remove storage scr_task:runtime work.check_queue[0]
return run function scr_task:task/skywing/shared/check_loop
