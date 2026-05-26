scoreboard players set #server timecounter 0

scoreboard players add #server time_second 1
execute if score #server time_second >= #minute timecounter run function scr:time/server/count_server_minute

execute as @a at @s run scoreboard players add @s time_online_second 1
execute as @a at @s if score @s time_online_second >= #minute timecounter run function scr:time/player/count_player_online_minute