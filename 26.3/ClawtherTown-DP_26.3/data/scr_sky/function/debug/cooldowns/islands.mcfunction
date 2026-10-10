execute store result score #cd_cursor scr_sk run data get storage scr_sky:cooldown_debug work.cursor
execute store result score #cd_end scr_sk run data get storage scr_sky:cooldown_debug work.end
execute if score #cd_cursor scr_sk >= #cd_end scr_sk run data modify storage scr_sky:cooldown_debug work.phase set value "done"
execute if score #cd_cursor scr_sk >= #cd_end scr_sk run return 1
execute unless score #cd_budget scr_sk matches 1.. run return 0
execute store result storage scr_sky:cooldown_debug work.ctx.id int 1 run scoreboard players get #cd_cursor scr_sk
function scr_sky:debug/cooldowns/island with storage scr_sky:cooldown_debug work.ctx
scoreboard players add #cd_cursor scr_sk 1
execute store result storage scr_sky:cooldown_debug work.cursor int 1 run scoreboard players get #cd_cursor scr_sk
scoreboard players remove #cd_budget scr_sk 1
return run function scr_sky:debug/cooldowns/islands
