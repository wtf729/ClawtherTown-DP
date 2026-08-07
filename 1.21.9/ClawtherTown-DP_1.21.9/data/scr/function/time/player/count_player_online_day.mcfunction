scoreboard players set @s time_online_hour 0
scoreboard players add @s time_online_day 1
execute if score @s time_online_day >= #year timecounter run function scr:time/player/count_player_online_year