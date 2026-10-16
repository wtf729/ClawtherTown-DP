function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 2 run return 0
execute unless data storage scr_task:runtime work.ctx.hooks.check_ready run return 0
execute store result score #hook scr_tk run function scr_task:core/hook {hook:"check_ready"}
execute unless score #hook scr_tk matches 1 run return 0
data modify storage scr_task:runtime work.state set value 3
function scr_task:core/state/write with storage scr_task:runtime work.ctx
function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 3 run return 0
function scr_task:core/progress/clear with storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.phase set value "ready_to_complete"
function scr_task:core/hook {hook:"cleanup"}
# Objectives only: reward and prerequisite refresh belong to complete.
function scr_task:ui/notification/show {kind:"ready_to_complete"}
return 1
