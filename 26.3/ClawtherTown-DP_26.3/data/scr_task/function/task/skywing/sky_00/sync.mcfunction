execute store result score #selected scr_tk run function scr_task:core/select {id:"skywing/sky_00"}
execute unless score #selected scr_tk matches 1 run return 0
function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 2 run tag @s remove scr_task.sky_00_active
execute unless score #state scr_tk matches 2 run return 0
function scr_task:task/skywing/sky_00/owned with storage scr_task:runtime work.ctx
execute if predicate scr:location/in_sky run function scr_task:event/formal_progress {id:"skywing/sky_00",field:"entered"}
execute if predicate scr:location/in_sky run tag @s remove scr_task.sky_00_active
return 1
