function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 2 run return 0
# V2 action counters opt in to the same valid Sky Profile guard as inventory.
execute if data storage scr_task:runtime work.event_task{profile_required:1b} unless function scr_task:task/skywing/shared/inventory_ready run return 0
execute if data storage scr_task:runtime work.event_task.field run function scr_task:event/sky/add
execute if data storage scr_task:runtime work.event_task.profession run function scr_task:event/sky/profession
return run function scr_task:task/skywing/shared/refresh
