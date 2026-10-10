$function scr_sky:api/inspect {id:$(id)}
execute unless data storage scr_sky:runtime result.island run return 0
data modify storage scr_sky:runtime work set value {ctx:{}}
data modify storage scr_sky:runtime work.island set from storage scr_sky:runtime result.island
$data modify storage scr_sky:runtime work.ctx.key set value "$(target)"
function scr_sky:role/read with storage scr_sky:runtime work.ctx
data get storage scr_sky:runtime result.role
data remove storage scr_sky:runtime work
