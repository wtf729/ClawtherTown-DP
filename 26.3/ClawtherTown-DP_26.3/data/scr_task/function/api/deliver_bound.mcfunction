data modify storage scr_task:runtime work.delivery_result set value {ok:0b,reason:"invalid"}
$execute store result score #selected scr_tk run function scr_task:core/select {id:"$(id)"}
$execute if score #selected scr_tk matches 1 run function scr_task:core/delivery/select {goal:"$(goal)"}
function scr_task:ui/delivery/feedback
data modify storage scr_task:runtime result set from storage scr_task:runtime work.delivery_result
return run data get storage scr_task:runtime result.ok
