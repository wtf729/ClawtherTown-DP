# Legacy external-date debug API retained in isolation. Production ignores this value.
$scoreboard players set #test_day scr_tw $(day)
execute unless score #test_day scr_tw matches 1..2000000000 run return 0
execute store result storage scr_tower:clock debug.day int 1 run scoreboard players get #test_day scr_tw
data modify storage scr_tower:clock debug.mode set value "manual"
return 1
