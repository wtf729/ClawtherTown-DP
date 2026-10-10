function scr_sky:core/island/read with storage scr_sky:runtime work.ctx

execute unless data storage scr_sky:runtime work.island{state:"active",reset_state:"idle",delete_state:"idle"} run data modify storage scr_sky:runtime result.reason set value "island_state"
execute unless data storage scr_sky:runtime work.island{state:"active",reset_state:"idle",delete_state:"idle"} run return 0

function scr_sky:role/read with storage scr_sky:runtime work.ctx

execute unless score #role scr_sk matches 2..3 run data modify storage scr_sky:runtime result.reason set value "permission"
execute unless score #role scr_sk matches 2..3 run return 0

execute store result score #newrole scr_sk run data get storage scr_sky:runtime work.ctx.role 1

execute unless score #newrole scr_sk matches 0..2 run data modify storage scr_sky:runtime result.reason set value "invalid_role"
execute unless score #newrole scr_sk matches 0..2 run return 0

function scr_sky:membership/apply with storage scr_sky:runtime work.ctx
