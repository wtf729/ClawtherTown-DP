execute unless entity @s[type=minecraft:player] run return 0
execute if data storage scr_sky:runtime busy run return 0
execute unless score #config_ok scr_sk matches 1 run return 0
function scr_sky:core/context/open
execute if data storage scr_sky:jobs active run data modify storage scr_sky:runtime result.reason set value "busy"
execute unless data storage scr_sky:config hub{ready:1b} run data modify storage scr_sky:runtime result.reason set value "hub_required"
execute unless data storage scr_sky:jobs active if data storage scr_sky:config hub{ready:1b} run function scr_sky:hub/request
function scr_sky:core/context/close
execute if data storage scr_sky:runtime result{ok:1b} run return 1
return 0
