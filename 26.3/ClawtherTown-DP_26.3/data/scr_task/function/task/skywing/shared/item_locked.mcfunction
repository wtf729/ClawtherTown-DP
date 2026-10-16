# Target comes from the matching Subtask, never from a field name or notification mark.
data remove storage scr_task:runtime work.held_target
$data modify storage scr_task:runtime work.held_target set from storage scr_task:runtime work.ctx.subtasks[{field:"$(field)"}].target
execute unless data storage scr_task:runtime work.held_target run return -1
execute store result score #held_target scr_tk run data get storage scr_task:runtime work.held_target
execute unless score #held_target scr_tk matches 1.. run return -1
execute store result score #held_saved scr_tk run function scr_task:core/progress/read with storage scr_task:runtime work.ctx
execute if score #held_saved scr_tk >= #held_target scr_tk run return 1
return 0
