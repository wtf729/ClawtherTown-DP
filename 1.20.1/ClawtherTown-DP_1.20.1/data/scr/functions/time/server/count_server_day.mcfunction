scoreboard players set #server time_hour 0
scoreboard players add #server time_day 1
scoreboard players add #server time_day_sign_in 1

scoreboard objectives remove time_daily_second
scoreboard objectives remove time_daily_minute
scoreboard objectives remove time_daily_minute_only
scoreboard objectives remove time_daily_hour
scoreboard objectives add time_daily_second dummy
scoreboard objectives add time_daily_minute dummy
scoreboard objectives add time_daily_minute_only dummy
scoreboard objectives add time_daily_hour dummy

scoreboard objectives remove time_daily_sign_in
scoreboard objectives add time_daily_sign_in dummy

execute if score #server time_day < #year timecounter run function scr:time/tellraw/server_day
execute if score #server time_day >= #year timecounter run function scr:time/server/count_server_year

execute if score #server birthday_tommorrow matches 1 run function scr:time/operation/birthday_execute