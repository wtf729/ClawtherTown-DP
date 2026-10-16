execute store result score #remaining scr_tw run data get storage scr_tower:runtime bonus_items
scoreboard players remove #remaining scr_tw 1
execute store result storage scr_tower:runtime draw.max int 1 run scoreboard players get #remaining scr_tw
execute store result storage scr_tower:runtime draw.index int 1 run function scr_tower:generate/bonus_roll with storage scr_tower:runtime draw
return run function scr_tower:generate/bonus_take with storage scr_tower:runtime draw
