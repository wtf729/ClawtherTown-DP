# Explicit administrator reset; does not transitively reset dependent tasks.
data modify storage scr_task:runtime work.phase set value "reset"
function scr_task:core/hook {hook:"cleanup"}
function scr_task:core/state/remove with storage scr_task:runtime work.ctx
function scr_task:core/unlock/refresh
return 1
