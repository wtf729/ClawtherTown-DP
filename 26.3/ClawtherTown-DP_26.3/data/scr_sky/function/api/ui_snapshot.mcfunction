execute unless entity @s[type=minecraft:player] run return 0
execute if data storage scr_sky:runtime busy run return 0
execute unless score #config_ok scr_sk matches 1 run return 0
function scr_sky:core/context/open

function scr_sky:player/reconcile
data modify storage scr_sky:runtime result.key set from storage scr_sky:runtime work.ctx.key
data modify storage scr_sky:runtime result.player set from storage scr_sky:runtime work.player
execute unless data storage scr_sky:runtime work.player{primary_island_id:0} run data modify storage scr_sky:runtime result.primary set from storage scr_sky:runtime work.island
execute unless data storage scr_sky:runtime work.player{primary_island_id:0} run execute store result storage scr_sky:runtime result.primary_role int 1 run scoreboard players get #role scr_sk
data modify storage scr_sky:runtime work.queue set from storage scr_sky:runtime work.player.memberships
data modify storage scr_sky:runtime result.islands set value []
data modify storage scr_sky:runtime result.max_level set value 0
function scr_sky:membership/list
function scr_sky:membership/list_invitations
data modify storage scr_sky:runtime result.ok set value 1b

function scr_sky:core/context/close
execute if data storage scr_sky:runtime result{ok:1b} run return 1
return 0
