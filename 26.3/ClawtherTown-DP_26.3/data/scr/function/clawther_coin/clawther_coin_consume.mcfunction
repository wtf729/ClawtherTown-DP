function scr:clawther_coin/clawther_coin_multiplier

execute as @s[scores={clawther_coin_add=1..}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1
execute as @s[scores={clawther_coin_add=1..}] run scoreboard players add @s clawther_coin_calculate 1
execute as @s[scores={clawther_coin_add=1..}] run scoreboard players remove @s clawther_coin_add 1
execute as @s[scores={clawther_coin_add=20..}] run scoreboard players add @s clawther_coin_calculate 6
execute as @s[scores={clawther_coin_add=20..}] run scoreboard players remove @s clawther_coin_add 6
execute as @s[scores={clawther_coin_add=200..}] run scoreboard players add @s clawther_coin_calculate 110
execute as @s[scores={clawther_coin_add=200..}] run scoreboard players remove @s clawther_coin_add 110
execute as @s[scores={clawther_coin_add=2000..}] run scoreboard players add @s clawther_coin_calculate 330
execute as @s[scores={clawther_coin_add=2000..}] run scoreboard players remove @s clawther_coin_add 330

scoreboard players operation @s clawther_coin_calculate *= @s clawther_coin_multiplier
scoreboard players operation @s clawther_coin += @s clawther_coin_calculate
scoreboard players set @s clawther_coin_calculate 0

advancement grant @s only scr:clawther_coin

execute as @s[scores={item_consume_clawther_coin=1..}] run function scr:clawther_coin/actionbar

execute as @s[scores={clawther_coin_add=1..}] run scoreboard players set @s item_consume_clawther_coin 2