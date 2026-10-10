execute if data storage scr_sky:maintenance job run data modify storage scr_sky:runtime result.reason set value "busy"
execute if data storage scr_sky:maintenance job run return 0
execute store result score #eligible scr_sk run function scr_sky:delete/eligibility with storage scr_sky:runtime work.ctx
execute unless score #eligible scr_sk matches 1 run return 0
execute unless data storage scr_sky:runtime work.island{delete_state:"awaiting_confirmation"} run data modify storage scr_sky:runtime result.reason set value "confirmation_expired"
execute unless data storage scr_sky:runtime work.island{delete_state:"awaiting_confirmation"} run return 0
data modify storage scr_sky:runtime work.maintenance_kind set value "delete"
function scr_sky:maintenance/request
