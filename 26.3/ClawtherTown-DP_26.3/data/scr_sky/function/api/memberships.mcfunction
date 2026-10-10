# Public player API. Copy result immediately; synchronous, never scheduled.
execute unless entity @s[type=minecraft:player] run return 0
execute if data storage scr_sky:runtime busy run return 0
execute unless score #config_ok scr_sk matches 1 run return 0
function scr_sky:core/context/open


data modify storage scr_sky:runtime work.queue set from storage scr_sky:runtime work.player.memberships
data modify storage scr_sky:runtime result.islands set value []
data modify storage scr_sky:runtime result.max_level set value 0
function scr_sky:membership/list
data modify storage scr_sky:runtime result.ok set value 1b

function scr_sky:core/context/close
execute if data storage scr_sky:runtime result{ok:1b} run return 1
return 0
