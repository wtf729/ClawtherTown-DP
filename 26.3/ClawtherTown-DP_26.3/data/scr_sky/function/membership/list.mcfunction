execute unless data storage scr_sky:runtime work.queue[0] run return 1
data modify storage scr_sky:runtime work.ctx.id set from storage scr_sky:runtime work.queue[0]
data remove storage scr_sky:runtime work.queue[0]
function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute if data storage scr_sky:runtime work.island run function scr_sky:membership/list_one
return run function scr_sky:membership/list
