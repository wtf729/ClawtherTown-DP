scoreboard players set @s time_online_second 0
scoreboard players add @s time_online_minute 1
execute if score @s time_online_minute >= #hour timecounter run function scr:time/player/count_player_online_hour