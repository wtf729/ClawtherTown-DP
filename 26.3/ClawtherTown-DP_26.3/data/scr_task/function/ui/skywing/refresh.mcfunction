data modify storage scr_task:runtime work.sky_refresh_queue set from storage scr_task:runtime catalog
execute if data storage scr_task:runtime work.sky_refresh_queue[0] run function scr_task:ui/skywing/refresh_loop
