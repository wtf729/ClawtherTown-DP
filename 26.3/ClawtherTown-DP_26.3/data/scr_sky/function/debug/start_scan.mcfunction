execute unless entity @s[type=minecraft:player] run return 0
execute if data storage scr_sky:runtime busy run return 0
execute unless score #config_ok scr_sk matches 1 run return 0
function scr_sky:core/context/open
$data modify storage scr_sky:runtime work.ctx.id set value $(id)
data modify storage scr_sky:runtime work.force set value 1b
function scr_sky:scan/request
function scr_sky:core/context/close
data get storage scr_sky:runtime result
