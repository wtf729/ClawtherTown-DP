clear @s minecraft:iron_nugget{id:"scr:soul"} 1
scoreboard players add @s soul_add 1
scoreboard players set @s item_consume_soul 40
scoreboard players set @s item_consume_cold_down 60

scoreboard players set @s[scores={clawther_coin_add=1..}] item_consume_clawther_coin 40

function scr:soul/actionbar