data remove storage scr_task:runtime work.event
$data modify storage scr_task:runtime work.event set from storage scr_task:runtime sky_event_catalog[{event:"$(event)"}]
execute unless data storage scr_task:runtime work.event run return 0
data modify storage scr_task:runtime work.event_queue set from storage scr_task:runtime work.event.tasks
execute if data storage scr_task:runtime work.event_queue[0] run function scr_task:event/sky/loop
return 1
