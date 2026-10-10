execute unless data storage scr_sky:runtime work.audit_keys[0] run return 1
data modify storage scr_sky:runtime work.ctx.target set from storage scr_sky:runtime work.audit_keys[0]
data remove storage scr_sky:runtime work.audit_keys[0]
function scr_sky:delete/reference_one with storage scr_sky:runtime work.ctx
return run function scr_sky:delete/reference_loop
