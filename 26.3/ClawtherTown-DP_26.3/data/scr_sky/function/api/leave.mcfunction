execute unless entity @s[type=minecraft:player] run return 0
execute if data storage scr_sky:runtime busy run return 0
execute unless score #config_ok scr_sk matches 1 run return 0
function scr_sky:core/context/open
$data modify storage scr_sky:runtime work.ctx merge value {id:$(id)}

function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute unless data storage scr_sky:runtime work.island{state:"active",reset_state:"idle",delete_state:"idle"} run data modify storage scr_sky:runtime result.reason set value "island_state"
execute if data storage scr_sky:runtime work.island{state:"active",reset_state:"idle",delete_state:"idle"} run function scr_sky:membership/leave

function scr_sky:core/context/close
execute if data storage scr_sky:runtime result{ok:1b} run return 1
return 0
