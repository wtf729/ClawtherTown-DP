scoreboard players set @s time_minute 0
scoreboard players add @s time_hour 1
execute if score @s time_hour >= #day timecounter run function scr:time/player/count_player_day