data modify storage scr_task:runtime work.sky_ui_task set from storage scr_task:runtime work.sky_ui_queue[0]
execute if data storage scr_task:runtime work.sky_ui_task{group:"skywing"} run function scr_task:ui/skywing/list_one
data remove storage scr_task:runtime work.sky_ui_queue[0]
execute if data storage scr_task:runtime work.sky_ui_queue[0] run return run function scr_task:ui/skywing/list_loop
return 1
