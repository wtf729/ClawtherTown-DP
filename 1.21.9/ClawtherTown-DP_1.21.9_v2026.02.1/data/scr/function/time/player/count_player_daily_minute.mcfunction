scoreboard players set @s time_daily_second 0
scoreboard players add @s time_daily_minute 1
scoreboard players add @s time_daily_minute_only 1
execute if score @s time_daily_minute >= #hour timecounter run function scr:time/player/count_player_daily_hour