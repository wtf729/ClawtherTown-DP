scoreboard players set #day scr_tw 0
execute unless score #server time_day_sign_in matches 1..2000000000 run return 0
scoreboard players operation #day scr_tw = #server time_day_sign_in
return 1
