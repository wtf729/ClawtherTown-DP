execute unless data storage scr_task:runtime work.home_queue[0] run return 1
execute if data storage scr_task:runtime work.home_queue[0].dim if data storage scr_task:runtime work.home_queue[0].pos[2] if data storage scr_task:runtime work.home_queue[0].rot[1] run function scr_task:task/guardian/home_one with storage scr_task:runtime work.home_queue[0]
data remove storage scr_task:runtime work.home_queue[0]
return run function scr_task:task/guardian/home_loop
