scoreboard players set @s time_hour 0
scoreboard players add @s time_day 1
execute if score @s time_day >= #year timecounter run function scr:time/player/count_player_year