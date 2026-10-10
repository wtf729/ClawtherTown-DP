# Public player API. Copy result immediately; synchronous, never scheduled.
execute unless entity @s[type=minecraft:player] run return 0
execute if data storage scr_sky:runtime busy run return 0
execute unless score #config_ok scr_sk matches 1 run return 0
function scr_sky:core/context/open
$data modify storage scr_sky:runtime work.ctx merge value {id:$(id)}

function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute if data storage scr_sky:runtime work.island run function scr_sky:role/read with storage scr_sky:runtime work.ctx
data modify storage scr_sky:runtime result.player set from storage scr_sky:runtime work.player
data modify storage scr_sky:runtime result.island set from storage scr_sky:runtime work.island
execute store result score #id scr_sk run data get storage scr_sky:runtime work.ctx.id 1
execute if data storage scr_sky:runtime work.island run function scr_sky:island/coordinates
execute if data storage scr_sky:runtime work.island run data modify storage scr_sky:runtime result.ok set value 1b

function scr_sky:core/context/close
execute if data storage scr_sky:runtime result{ok:1b} run return 1
return 0
