data modify storage scr_task:runtime work.event_task set from storage scr_task:runtime work.event_queue[0]
execute store result score #selected scr_tk run function scr_task:core/select with storage scr_task:runtime work.event_task
execute if score #selected scr_tk matches 1 run function scr_task:event/sky/one
data remove storage scr_task:runtime work.event_queue[0]
execute if data storage scr_task:runtime work.event_queue[0] run return run function scr_task:event/sky/loop
return 1
