scoreboard players set @s time_second 0
scoreboard players add @s time_minute 1
execute if score @s time_minute >= #hour timecounter run function scr:time/player/count_player_hour