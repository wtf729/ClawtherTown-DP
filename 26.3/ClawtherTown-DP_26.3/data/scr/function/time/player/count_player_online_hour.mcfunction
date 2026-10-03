scoreboard players set @s time_online_minute 0
scoreboard players add @s time_online_hour 1
execute if score @s time_online_hour >= #day timecounter run function scr:time/player/count_player_online_day