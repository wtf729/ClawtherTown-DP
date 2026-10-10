function scr_sky:debug/cooldowns/notify with storage scr_sky:cooldown_debug work
data modify storage scr_sky:cooldown_debug last set value {}
execute store result storage scr_sky:cooldown_debug last.players int 1 run scoreboard players get #cd_players scr_sk
execute store result storage scr_sky:cooldown_debug last.islands int 1 run scoreboard players get #cd_islands scr_sk
execute store result storage scr_sky:cooldown_debug last.timestamps int 1 run scoreboard players get #cd_fields scr_sk
data remove storage scr_sky:cooldown_debug work
