$execute store result score #selected scr_tk run function scr_task:core/select {id:"$(id)"}
execute unless score #selected scr_tk matches 1 run return 0
$data modify storage scr_task:runtime work.ctx.field set value "$(field)"
return run function scr_task:core/subtask/check with storage scr_task:runtime work.ctx
