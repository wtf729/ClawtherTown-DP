# Called only after authoritative role and membership writes succeed.
execute if data storage scr_task:runtime {busy:1b} run return 0
data modify storage scr_task:runtime busy set value 1b
data modify storage scr_task:runtime work set value {ctx:{},address:{id:"skywing/sky_a18",field:"joined"}}
data modify storage scr_task:runtime work.address.key set from storage scr_sky:runtime work.ctx.target
data modify storage scr_task:runtime work.address.island set from storage scr_sky:runtime work.ctx.id
function scr_task:event/sky/island_key with storage scr_task:runtime work.address
function scr_task:core/event/address
function scr_task:core/context/close
# Wait for the enclosing Sky context to close before calling its public level-query API.
schedule function scr_task:event/sky/level_refresh 1t replace
return 1
