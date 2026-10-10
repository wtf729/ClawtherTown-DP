# Each threshold is a complete Task condition, not an arbitrary milestone.
function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 2 run return 0
execute unless data storage scr_task:runtime work.ctx.hooks.check_complete run return 0
data remove storage scr_task:runtime work.subtask
$data modify storage scr_task:runtime work.subtask set from storage scr_task:runtime work.ctx.subtasks[{field:"$(field)"}]
execute unless data storage scr_task:runtime work.subtask.target run return 0
scoreboard players set #subtarget scr_tk 0
execute store result score #subtarget scr_tk run data get storage scr_task:runtime work.subtask.target
execute unless score #subtarget scr_tk matches 1.. run return 0
execute store result score #subvalue scr_tk run function scr_task:core/progress/read with storage scr_task:runtime work.ctx
execute if score #subvalue scr_tk < #subtarget scr_tk run return 0
$execute if data storage scr_task:players players."$(key)".tasks.$(group).$(name).subtasks_done.$(field) run return 0
# Completion predicates may use ctx.field as scratch; restore the selected context.
data modify storage scr_task:runtime work.subtask_ctx set from storage scr_task:runtime work.ctx
scoreboard players set #subcomplete scr_tk 0
execute store result score #subcomplete scr_tk run function scr_task:core/hook {hook:"check_complete"}
data modify storage scr_task:runtime work.ctx set from storage scr_task:runtime work.subtask_ctx
data remove storage scr_task:runtime work.subtask_ctx
# The caller's normal complete lifecycle emits the sole final notification.
execute if score #subcomplete scr_tk matches 1 run return 0
$execute store success score #submarked scr_tk run data modify storage scr_task:players players."$(key)".tasks.$(group).$(name).subtasks_done.$(field) set value 1b
execute unless score #submarked scr_tk matches 1 run return 0
function scr_task:ui/notification/show {kind:"subtask_completed"}
return 1
