execute as @s[scores={clawther_coin_add=1..}] run playsound minecraft:block.note_block.chime ambient @s ~ ~ ~ 0.5 1
execute as @s[scores={clawther_coin_add=1..}] run scoreboard players add @s clawther_coin 1
execute as @s[scores={clawther_coin_add=1..}] run scoreboard players remove @s clawther_coin_add 1
execute as @s[scores={clawther_coin_add=50..}] run scoreboard players add @s clawther_coin 6
execute as @s[scores={clawther_coin_add=50..}] run scoreboard players remove @s clawther_coin_add 6
execute as @s[scores={clawther_coin_add=500..}] run scoreboard players add @s clawther_coin 110
execute as @s[scores={clawther_coin_add=500..}] run scoreboard players remove @s clawther_coin_add 110
execute as @s[scores={clawther_coin_add=5000..}] run scoreboard players add @s clawther_coin 330
execute as @s[scores={clawther_coin_add=5000..}] run scoreboard players remove @s clawther_coin_add 330
execute as @s[scores={item_consume_clawther_coin=1..}] run function scr:clawther_coin/actionbar

execute as @s[scores={clawther_coin_add=1..}] run scoreboard players set @s item_consume_clawther_coin 2