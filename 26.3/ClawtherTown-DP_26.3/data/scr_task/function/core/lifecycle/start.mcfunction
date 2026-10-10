function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 1 run return 0
data modify storage scr_task:runtime work.state set value 2
function scr_task:core/state/write with storage scr_task:runtime work.ctx
function scr_task:core/progress/clear with storage scr_task:runtime work.ctx
function scr_task:core/hook {hook:"reset_progress"}
data modify storage scr_task:runtime work.phase set value "start"
function scr_task:ui/notification/show {kind:"started"}
function scr_task:core/start_items/ensure
function scr_task:core/hook {hook:"start"}
return 1
