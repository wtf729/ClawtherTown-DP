execute if data storage scr_sky:cooldown_debug work run return 0
data modify storage scr_sky:cooldown_debug work set value {ctx:{},phase:"players",cursor:1}
data modify storage scr_sky:cooldown_debug work.uuid set from entity @s UUID
data modify storage scr_sky:cooldown_debug work.players set from storage scr_sky:players keys
data modify storage scr_sky:cooldown_debug work.end set from storage scr_sky:islands meta.next_id
scoreboard players set #cd_players scr_sk 0
scoreboard players set #cd_islands scr_sk 0
scoreboard players set #cd_fields scr_sk 0
function scr_sky:debug/cooldowns/tick
