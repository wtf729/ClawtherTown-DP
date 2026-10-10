# UI preview only: no request or island state is saved.
data modify storage scr_sky:runtime result set value {ok:0b,reason:"not_ready_or_not_allowed"}
execute unless entity @s[type=minecraft:player] run return 0
execute if data storage scr_sky:runtime busy run return 0
execute unless score #config_ok scr_sk matches 1 run return 0
function scr_sky:core/context/open
$data modify storage scr_sky:runtime work.ctx merge value {id:$(id)}
execute store result score #eligible scr_sk run function scr_sky:delete/eligibility with storage scr_sky:runtime work.ctx
execute if score #eligible scr_sk matches 1 if data storage scr_sky:runtime work.island{delete_state:"idle"} run data modify storage scr_sky:runtime result.ok set value 1b
execute if score #eligible scr_sk matches 1 if data storage scr_sky:runtime work.island{delete_state:"awaiting_confirmation"} run data modify storage scr_sky:runtime result.ok set value 1b
function scr_sky:core/context/close
execute if data storage scr_sky:runtime result{ok:1b} run return 1
return 0
