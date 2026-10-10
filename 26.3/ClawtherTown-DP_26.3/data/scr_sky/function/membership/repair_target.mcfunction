data modify storage scr_sky:runtime work.actor_ctx set from storage scr_sky:runtime work.ctx
$data modify storage scr_sky:runtime work.ctx.key set value "$(target)"
function scr_sky:player/init with storage scr_sky:runtime work.ctx
execute if data storage scr_sky:runtime work{repair_primary:1b} run function scr_sky:primary/resolve
$data remove storage scr_sky:ui sessions."$(target)"
data modify storage scr_sky:runtime work.ctx set from storage scr_sky:runtime work.actor_ctx
function scr_sky:player/init with storage scr_sky:runtime work.ctx
