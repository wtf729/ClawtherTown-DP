data modify storage scr_task:runtime work.objective set from storage scr_task:runtime work.objective_queue[0]
function scr_task:task/skywing/shared/objective
data remove storage scr_task:runtime work.objective_queue[0]
execute if data storage scr_task:runtime work.objective_queue[0] run return run function scr_task:task/skywing/shared/objective_loop
return 1
