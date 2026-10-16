# Independent thunder cycle: 10-150 minutes off, 3-13 minutes on.
# Thunder is visible only while rain is also active.
scoreboard players add #thunder scr_weather 1
execute if score #thunder scr_weather matches 2 run scoreboard players set #thunder scr_weather 0
execute if score #thunder scr_weather matches 0 store result score #thunder_left scr_weather run random value 600..9000
execute if score #thunder scr_weather matches 1 store result score #thunder_left scr_weather run random value 180..780
scoreboard players set #changed scr_weather 1
