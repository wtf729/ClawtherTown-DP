execute as @s[scores={soul_add=1..}] run scoreboard players set @s item_consume_cold_down 40
execute as @s[scores={soul_add=1..}] run playsound minecraft:block.note_block.chime ambient @s ~ ~ ~ 0.5 1
execute as @s[scores={soul_add=1..}] run scoreboard players add @s soul 1
execute as @s[scores={soul_add=1..}] run scoreboard players remove @s soul_add 1
execute as @s[scores={soul_add=50..}] run scoreboard players add @s soul 6
execute as @s[scores={soul_add=50..}] run scoreboard players remove @s soul_add 6
execute as @s[scores={soul_add=500..}] run scoreboard players add @s soul 112
execute as @s[scores={soul_add=500..}] run scoreboard players remove @s soul_add 112
execute as @s[scores={item_consume_soul=1..}] run function scr:soul/actionbar

execute as @s[scores={soul_add=1..}] run scoreboard players set @s item_consume_soul 2