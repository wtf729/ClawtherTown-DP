scoreboard players set #server time_second 0
scoreboard players add #server time_minute 1

execute if score #server time_minute >= #hour timecounter run function scr:time/server/count_server_hour