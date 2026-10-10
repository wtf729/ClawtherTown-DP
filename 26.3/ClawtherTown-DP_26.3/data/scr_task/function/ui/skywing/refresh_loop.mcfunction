data modify storage scr_task:runtime work.sky_refresh_task set from storage scr_task:runtime work.sky_refresh_queue[0]
execute if data storage scr_task:runtime work.sky_refresh_task{group:"skywing"} if data storage scr_task:runtime work.sky_refresh_task.objectives run function scr_task:ui/skywing/refresh_one
data remove storage scr_task:runtime work.sky_refresh_queue[0]
execute if data storage scr_task:runtime work.sky_refresh_queue[0] run return run function scr_task:ui/skywing/refresh_loop
return 1
