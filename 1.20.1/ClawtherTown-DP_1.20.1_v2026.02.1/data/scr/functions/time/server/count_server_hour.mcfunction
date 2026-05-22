scoreboard players set #server time_minute 0

scoreboard players add #server time_hour 1
execute if score #server time_hour < #day timecounter run function scr:time/tellraw/server_hour
execute if score #server time_hour >= #day timecounter run function scr:time/server/count_server_day