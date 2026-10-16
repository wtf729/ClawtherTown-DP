# Global weather timers, in seconds. Scores survive reload and server restart.
# Rain and thunder use independent vanilla-like cycles; no sleep integration.
scoreboard objectives add scr_weather dummy
gamerule minecraft:advance_weather false
execute unless score #rain scr_weather matches 0..1 run scoreboard players set #rain scr_weather 0
execute unless score #thunder scr_weather matches 0..1 run scoreboard players set #thunder scr_weather 0
execute unless score #rain_left scr_weather matches 1.. if score #rain scr_weather matches 0 store result score #rain_left scr_weather run random value 600..9000
execute unless score #rain_left scr_weather matches 1.. if score #rain scr_weather matches 1 store result score #rain_left scr_weather run random value 600..1200
execute unless score #thunder_left scr_weather matches 1.. if score #thunder scr_weather matches 0 store result score #thunder_left scr_weather run random value 600..9000
execute unless score #thunder_left scr_weather matches 1.. if score #thunder scr_weather matches 1 store result score #thunder_left scr_weather run random value 180..780
function scr:server_unique/weather/apply
# Replace prevents duplicate scheduled loops after reload.
schedule function scr:server_unique/weather/second 20t replace
