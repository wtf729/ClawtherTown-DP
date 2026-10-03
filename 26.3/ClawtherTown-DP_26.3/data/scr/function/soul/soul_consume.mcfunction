function scr:soul/soul_multiplier

execute as @s[scores={soul_add=1..}] run scoreboard players set @s item_consume_cold_down 40
execute as @s[scores={soul_add=1..}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1
execute as @s[scores={soul_add=1..}] run scoreboard players add @s soul_calculate 1
execute as @s[scores={soul_add=1..}] run scoreboard players remove @s soul_add 1
execute as @s[scores={soul_add=20..}] run scoreboard players add @s soul_calculate 11
execute as @s[scores={soul_add=20..}] run scoreboard players remove @s soul_add 11
execute as @s[scores={soul_add=200..}] run scoreboard players add @s soul_calculate 57
execute as @s[scores={soul_add=200..}] run scoreboard players remove @s soul_add 57

scoreboard players operation @s soul_calculate *= @s soul_multiplier
scoreboard players operation @s soul += @s soul_calculate
scoreboard players set @s soul_calculate 0

advancement grant @s only scr:soul

execute as @s[scores={item_consume_soul=1..}] run function scr:soul/actionbar

execute as @s[scores={soul_add=1..}] run scoreboard players set @s item_consume_soul 2