function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute unless score #role scr_sk matches 3 run data modify storage scr_sky:runtime result.reason set value "permission"
execute unless score #role scr_sk matches 3 run return 0
execute unless data storage scr_sky:runtime work.island{delete_state:"awaiting_confirmation"} run data modify storage scr_sky:runtime result.reason set value "confirmation_expired"
execute unless data storage scr_sky:runtime work.island{delete_state:"awaiting_confirmation"} run return 0
data modify storage scr_sky:runtime work.island.delete_state set value "idle"
data remove storage scr_sky:runtime work.island.delete_requested_by
function scr_sky:core/island/save with storage scr_sky:runtime work.ctx
data modify storage scr_sky:runtime result.ok set value 1b
