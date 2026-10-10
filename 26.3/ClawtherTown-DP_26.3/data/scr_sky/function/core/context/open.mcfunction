data modify storage scr_sky:runtime busy set value 1b
data modify storage scr_sky:runtime work set value {ctx:{}}
data modify storage scr_sky:runtime result set value {ok:0b,reason:"not_ready_or_not_allowed"}
function scr_uuid:resolve
data modify storage scr_sky:runtime work.ctx.key set from storage scr_uuid:runtime result.key
function scr_sky:player/init with storage scr_sky:runtime work.ctx
