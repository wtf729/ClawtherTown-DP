execute unless entity @s[type=minecraft:player] run return 0
execute if data storage scr_sky:runtime busy run return 0
execute unless score #config_ok scr_sk matches 1 run return 0
function scr_sky:core/context/open
$data modify storage scr_sky:runtime work.ctx merge value {id:$(id)}
execute store result storage scr_sky:runtime result.eligible byte 1 run function scr_sky:reset/eligibility with storage scr_sky:runtime work.ctx
data modify storage scr_sky:runtime result.island set from storage scr_sky:runtime work.island
data modify storage scr_sky:runtime result.ok set value 1b
function scr_sky:core/context/close
execute if data storage scr_sky:runtime result{ok:1b} run return 1
return 0
