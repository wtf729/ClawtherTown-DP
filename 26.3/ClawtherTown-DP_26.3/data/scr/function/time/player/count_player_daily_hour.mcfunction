scoreboard players set @s time_daily_minute 0
scoreboard players add @s time_daily_hour 1
execute if score @s time_daily_hour < #server time_daily_hour_remind run function scr:time/tellraw/player_daily_hour
execute if score @s time_daily_hour >= #server time_daily_hour_remind run function scr:time/tellraw/player_daily_hour_remind