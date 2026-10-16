function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute if score #state scr_tk matches 3 if data storage scr_task:runtime work.record.deferred_ready_to_complete run function scr_task:task/skywing/shared/deferred with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 2 run return 0
execute if data storage scr_task:runtime work.ctx.deliveries[0] run function scr_task:core/delivery/sync
data modify storage scr_task:runtime work.objective_queue set from storage scr_task:runtime work.ctx.objectives
execute if data storage scr_task:runtime work.objective_queue[0] run function scr_task:task/skywing/shared/objective_loop
return run function scr_task:core/lifecycle/ready_to_complete
