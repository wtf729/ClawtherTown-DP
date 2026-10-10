execute unless data storage scr_sky:runtime work.invitation_queue[0] run return 1
function scr_sky:membership/invitation_filter with storage scr_sky:runtime work.ctx
data remove storage scr_sky:runtime work.invitation_queue[0]
return run function scr_sky:membership/invitation_loop
