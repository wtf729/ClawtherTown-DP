# /weather is global in 26.3. Native duration is unused while advance_weather=false.
# Apply once after both timers update; reload also restores the saved weather.
execute if score #rain scr_weather matches 0 run weather clear
execute if score #rain scr_weather matches 1 if score #thunder scr_weather matches 0 run weather rain
execute if score #rain scr_weather matches 1 if score #thunder scr_weather matches 1 run weather thunder
