$execute store result score #selected scr_tk run function scr_task:core/select {id:"$(id)"}
execute unless score #selected scr_tk matches 1 run return 0
$data modify storage scr_task:runtime work.ctx.field set value "$(field)"
$data modify storage scr_task:runtime work.ctx.amount set value $(amount)
execute store result score #changed scr_tk run function scr_task:core/progress/add with storage scr_task:runtime work.ctx
execute unless score #changed scr_tk matches 1 run return 0
function scr_task:core/lifecycle/ready_to_complete
return 1
