execute if score @s not_newcomer matches 1 run function scr:time/tellraw/player_back
execute if score @s not_newcomer matches 1 run function scr:time/tellraw/player
function scr:time/player/synchronize
execute as @a[distance=0.01..] at @s run playsound minecraft:block.note_block.chime block @s ~ ~ ~ 1 0.5

execute if score @s not_newcomer matches 1 if score @s time_daily_sign_in matches 1 run function scr:time/tellraw/player_daily_sign_in_true
execute if score @s not_newcomer matches 1 if score @s time_daily_sign_in matches 0 run function scr:time/tellraw/player_daily_sign_in_false

effect give @s minecraft:resistance 30 255