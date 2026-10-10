function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 2 run return 0
execute unless data storage scr_task:runtime work.ctx.hooks.check_complete run return 0
execute store result score #hook scr_tk run function scr_task:core/hook {hook:"check_complete"}
execute unless score #hook scr_tk matches 1 run return 0
data modify storage scr_task:runtime work.state set value 3
function scr_task:core/state/write with storage scr_task:runtime work.ctx
function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 3 run return 0
function scr_task:core/progress/clear with storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.phase set value "complete"
function scr_task:core/hook {hook:"cleanup"}
# Objectives only: reward and prerequisite refresh belong to submit.
function scr_task:ui/notification/show {kind:"completed"}
return 1
