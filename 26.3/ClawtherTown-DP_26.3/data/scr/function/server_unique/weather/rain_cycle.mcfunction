# Toggle rain. Dry interval: 10-150 minutes; wet interval: 10-20 minutes.
scoreboard players add #rain scr_weather 1
execute if score #rain scr_weather matches 2 run scoreboard players set #rain scr_weather 0
execute if score #rain scr_weather matches 0 store result score #rain_left scr_weather run random value 600..9000
execute if score #rain scr_weather matches 1 store result score #rain_left scr_weather run random value 600..1200
scoreboard players set #changed scr_weather 1
