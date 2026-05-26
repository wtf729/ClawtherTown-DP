execute if entity @s[scores={elevator_jump=1..,elevator_cd=0}] if block ~ ~-1 ~ #scr:elevator run tag @s add elevator_jump
scoreboard players reset @s elevator_jump

execute as @s[scores={elevator_cd=0}] at @s run function scr:elevator/player/second_clock

execute as @s[scores={elevator_cd=1..}] run scoreboard players remove @s elevator_cd 1