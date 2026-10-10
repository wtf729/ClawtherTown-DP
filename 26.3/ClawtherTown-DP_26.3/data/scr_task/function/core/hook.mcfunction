# Hooks are trusted function IDs loaded from registered task definitions, never UI input.
$execute unless data storage scr_task:runtime work.ctx.hooks.$(hook) run return 1
data remove storage scr_task:runtime work.call
$data modify storage scr_task:runtime work.call.fn set from storage scr_task:runtime work.ctx.hooks.$(hook)
return run function scr_task:core/invoke with storage scr_task:runtime work.call
