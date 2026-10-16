function scr_task:core/select with storage scr_task:runtime work.resume_queue[0]
function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute if score #state scr_tk matches 2..3 run function scr_task:core/player/resume_one
data remove storage scr_task:runtime work.resume_queue[0]
execute if data storage scr_task:runtime work.resume_queue[0] run return run function scr_task:core/player/resume_loop
return 1
