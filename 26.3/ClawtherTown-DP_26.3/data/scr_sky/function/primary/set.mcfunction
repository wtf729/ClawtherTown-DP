function scr_sky:core/island/read with storage scr_sky:runtime work.ctx

execute unless data storage scr_sky:runtime work.island{state:"active",delete_state:"idle",reset_state:"idle"} run data modify storage scr_sky:runtime result.reason set value "island_state"
execute unless data storage scr_sky:runtime work.island{state:"active",delete_state:"idle",reset_state:"idle"} run return 0

function scr_sky:role/read with storage scr_sky:runtime work.ctx

execute unless score #role scr_sk matches 1..3 run data modify storage scr_sky:runtime result.reason set value "permission"
execute unless score #role scr_sk matches 1..3 run return 0

data modify storage scr_sky:runtime work.player.primary_island_id set from storage scr_sky:runtime work.ctx.id

function scr_sky:player/save with storage scr_sky:runtime work.ctx

data modify storage scr_sky:runtime result.ok set value 1b
