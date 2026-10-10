execute unless data storage scr_sky:cooldown_debug work.players[0] run data modify storage scr_sky:cooldown_debug work.phase set value "islands"
execute unless data storage scr_sky:cooldown_debug work.players[0] run return 1
execute unless score #cd_budget scr_sk matches 1.. run return 0
data modify storage scr_sky:cooldown_debug work.ctx.key set from storage scr_sky:cooldown_debug work.players[0]
data remove storage scr_sky:cooldown_debug work.players[0]
function scr_sky:debug/cooldowns/player with storage scr_sky:cooldown_debug work.ctx
scoreboard players remove #cd_budget scr_sk 1
return run function scr_sky:debug/cooldowns/players
