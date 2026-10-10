$execute store result score #selected scr_tk run function scr_task:core/select {id:"$(id)"}
execute unless score #selected scr_tk matches 1 run return 0
function scr_task:core/state/read with storage scr_task:runtime work.ctx
tellraw @s {text:"[Task Debug]",color:"yellow",extra:[{nbt:"work.record",storage:"scr_task:runtime",color:"white"}]}
