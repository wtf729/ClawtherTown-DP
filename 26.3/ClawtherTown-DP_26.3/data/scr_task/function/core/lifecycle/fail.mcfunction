function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 2 run return 0
execute unless data storage scr_task:runtime work.ctx.hooks.check_fail run return 0
execute store result score #hook scr_tk run function scr_task:core/hook {hook:"check_fail"}
execute unless score #hook scr_tk matches 1 run return 0
data modify storage scr_task:runtime work.phase set value "fail"
function scr_task:core/progress/clear with storage scr_task:runtime work.ctx
function scr_task:core/hook {hook:"fail"}
function scr_task:core/hook {hook:"cleanup"}
function scr_task:core/hook {hook:"reset_progress"}
# Persistent state stays ACTIVE; no failed state exists.
function scr_task:ui/notification/show {kind:"failed"}
return 1
