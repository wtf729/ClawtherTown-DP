execute unless data storage scr_sky:ui work.count_queue[0] run return 1
data modify storage scr_sky:ui work.ctx.target set from storage scr_sky:ui work.count_queue[0]
data remove storage scr_sky:ui work.count_queue[0]
function scr_sky:ui/count_member with storage scr_sky:ui work.ctx
return run function scr_sky:ui/count_members
