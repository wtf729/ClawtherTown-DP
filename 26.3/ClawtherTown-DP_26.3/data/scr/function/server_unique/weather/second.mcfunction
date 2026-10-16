# One global update per second, never per player or per dimension.
scoreboard players set #changed scr_weather 0
scoreboard players remove #rain_left scr_weather 1
scoreboard players remove #thunder_left scr_weather 1
execute if score #rain_left scr_weather matches ..0 run function scr:server_unique/weather/rain_cycle
execute if score #thunder_left scr_weather matches ..0 run function scr:server_unique/weather/thunder_cycle
execute if score #changed scr_weather matches 1 run function scr:server_unique/weather/apply
schedule function scr:server_unique/weather/second 20t replace
