function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute unless data storage scr_sky:runtime work.island{state:"active",reset_state:"idle",delete_state:"idle"} run return 0
function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute unless score #role scr_sk matches 2..3 run return 0
function scr_sky:island/spawn/build_default
execute in scr:sky store result score #spawn_safe scr_sk run function scr_sky:island/spawn/safe with storage scr_sky:runtime work.island.spawn
execute unless score #spawn_safe scr_sk matches 1 run return 0
function scr_sky:core/island/save with storage scr_sky:runtime work.ctx
data modify storage scr_sky:runtime result.ok set value 1b
