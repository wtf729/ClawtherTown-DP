scoreboard players set @s timecounter 0

scoreboard players add @s time_second 1
execute if score @s time_second >= #minute timecounter run function scr:time/player/count_player_minute

scoreboard players add @s time_daily_second 1
execute if score @s time_daily_second >= #minute timecounter run function scr:time/player/count_player_daily_minute