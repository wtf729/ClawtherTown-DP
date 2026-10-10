function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 2 run return 0
data remove storage scr_task:runtime work.next
$data modify storage scr_task:runtime work.next set compute default integer {type:"minecraft:constant",value:$(amount)}
execute unless data storage scr_task:runtime work.next run return 0
execute store result score #number scr_tk run data get storage scr_task:runtime work.next
execute unless score #number scr_tk matches 0..2147483647 run return 0
$data modify storage scr_task:players players."$(key)".tasks.$(group).$(name).progress.$(field) set from storage scr_task:runtime work.next
function scr_task:core/subtask/check with storage scr_task:runtime work.ctx
return 1
