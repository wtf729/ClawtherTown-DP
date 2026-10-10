$execute store result score #selected scr_tk run function scr_task:core/select {id:"$(id)"}
execute unless score #selected scr_tk matches 1 run return 0
function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 2 run return 0
$data modify storage scr_task:runtime work.ctx.field set value "$(field)"
data modify storage scr_task:runtime work.ctx.amount set value 1
function scr_task:core/progress/set with storage scr_task:runtime work.ctx
return run function scr_task:core/lifecycle/complete
