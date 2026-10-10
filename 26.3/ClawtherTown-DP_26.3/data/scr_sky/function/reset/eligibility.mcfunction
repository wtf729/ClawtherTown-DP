function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute unless data storage scr_sky:runtime work.island{state:"active",scan_state:"idle"} run data modify storage scr_sky:runtime result.reason set value "island_state"
execute unless data storage scr_sky:runtime work.island{state:"active",scan_state:"idle"} run return 0
function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute unless score #role scr_sk matches 3 run data modify storage scr_sky:runtime result.reason set value "permission"
execute unless score #role scr_sk matches 3 run return 0
execute unless data storage scr_sky:runtime work.island.delete_state run data modify storage scr_sky:runtime result.reason set value "island_state"
execute unless data storage scr_sky:runtime work.island.delete_state run return 0
execute unless data storage scr_sky:runtime work.island{delete_state:"idle"} run data modify storage scr_sky:runtime result.reason set value "island_state"
execute unless data storage scr_sky:runtime work.island{delete_state:"idle"} run return 0
$execute if data storage scr_sky:jobs active{id:$(id)} run data modify storage scr_sky:runtime result.reason set value "busy"
$execute if data storage scr_sky:jobs active{id:$(id)} run return 0
data remove storage scr_sky:runtime work.clock_stamp
data modify storage scr_sky:runtime work.clock_stamp set from storage scr_sky:runtime work.island.last_reset_started
function scr_sky:core/cooldown/read
execute if score #cd_remaining scr_sk matches 1.. run data modify storage scr_sky:runtime result.reason set value "reset_cooldown"
execute if score #cd_remaining scr_sk matches 1.. run return 0
return 1
