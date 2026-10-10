execute unless data storage scr_sky:runtime work.cleanup_keys[0] run return 1
data modify storage scr_sky:runtime work.ctx.target set from storage scr_sky:runtime work.cleanup_keys[0]
data remove storage scr_sky:runtime work.cleanup_keys[0]
function scr_sky:delete/cleanup_player with storage scr_sky:runtime work.ctx
data modify storage scr_sky:runtime work.ctx set from storage scr_sky:runtime work.cleanup_ctx
return run function scr_sky:delete/cleanup_loop
