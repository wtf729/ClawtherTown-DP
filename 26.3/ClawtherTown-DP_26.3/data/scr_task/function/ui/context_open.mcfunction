data modify storage scr_task:runtime busy set value 1b
data modify storage scr_task:runtime work set value {ctx:{}}
data remove storage scr_task:runtime result
function scr_uuid:resolve
execute unless data storage scr_uuid:runtime result.key run return 0
data modify storage scr_task:runtime work.ctx.key set from storage scr_uuid:runtime result.key
data modify storage scr_task:runtime work.key set from storage scr_task:runtime work.ctx.key
return run function scr_task:ui/context_ready with storage scr_task:runtime work.ctx
