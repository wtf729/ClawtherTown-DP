# Retained debug API; never touches the production source, anchor or player quota.
scoreboard players set #test_day scr_tw 0
execute store result score #test_day scr_tw run data get storage scr_tower:clock debug.day
execute if score #test_day scr_tw matches 2000000000.. run return 0
execute store result storage scr_tower:clock debug.day int 1 run scoreboard players add #test_day scr_tw 1
data modify storage scr_tower:clock debug.mode set value "test"
return 1
