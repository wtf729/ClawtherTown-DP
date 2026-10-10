execute store result score #eligible scr_sk run function scr_sky:reset/eligibility with storage scr_sky:runtime work.ctx
execute unless score #eligible scr_sk matches 1 run return 0
execute unless data storage scr_sky:runtime work.island{reset_state:"idle"} unless data storage scr_sky:runtime work.island{reset_state:"awaiting_confirmation"} run return 0
data modify storage scr_sky:runtime work.island.reset_state set value "awaiting_confirmation"
data modify storage scr_sky:runtime work.island.reset_requested_by set from storage scr_sky:runtime work.ctx.key
function scr_sky:core/island/save with storage scr_sky:runtime work.ctx
data modify storage scr_sky:runtime result.ok set value 1b
