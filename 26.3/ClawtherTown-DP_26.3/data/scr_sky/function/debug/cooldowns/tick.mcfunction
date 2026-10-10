scoreboard players set #cd_budget scr_sk 32
execute if data storage scr_sky:cooldown_debug work{phase:"players"} run function scr_sky:debug/cooldowns/players
execute if data storage scr_sky:cooldown_debug work{phase:"islands"} run function scr_sky:debug/cooldowns/islands
execute if data storage scr_sky:cooldown_debug work{phase:"done"} run function scr_sky:debug/cooldowns/finish
