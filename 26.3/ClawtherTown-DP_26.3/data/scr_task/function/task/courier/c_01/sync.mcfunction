execute store result score #selected scr_tk run function scr_task:core/select {id:"courier/c_01"}
execute unless score #selected scr_tk matches 1 run return 0
function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 2 run return 0
execute store result score #starter_claimed scr_tk run function scr_task:core/start_items/claimed
execute if score #starter_claimed scr_tk matches 1 run function scr_task:event/formal_progress {id:"courier/c_01",field:"gift"}
return 1
