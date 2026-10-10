function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute unless data storage scr_sky:runtime work.island{state:"active",scan_state:"idle"} run data modify storage scr_sky:runtime result.reason set value "island_state"
execute unless data storage scr_sky:runtime work.island{state:"active",scan_state:"idle"} run return 0
function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute unless score #role scr_sk matches 3 run data modify storage scr_sky:runtime result.reason set value "permission"
execute unless score #role scr_sk matches 3 run return 0
execute unless data storage scr_sky:runtime work.island.reset_state run data modify storage scr_sky:runtime result.reason set value "island_state"
execute unless data storage scr_sky:runtime work.island.reset_state run return 0
execute unless data storage scr_sky:runtime work.island{reset_state:"idle"} run data modify storage scr_sky:runtime result.reason set value "island_state"
execute unless data storage scr_sky:runtime work.island{reset_state:"idle"} run return 0
$execute if data storage scr_sky:jobs active{id:$(id)} run data modify storage scr_sky:runtime result.reason set value "busy"
$execute if data storage scr_sky:jobs active{id:$(id)} run return 0
execute store result score #members_count scr_sk run data get storage scr_sky:runtime work.island.roles 1
execute unless score #members_count scr_sk matches 0 run data modify storage scr_sky:runtime result.reason set value "members_remain"
execute unless score #members_count scr_sk matches 0 run return 0
return 1
