clear @s minecraft:gold_nugget{id:"scr:clawther_coin"} 1
scoreboard players add @s clawther_coin_add 1
scoreboard players set @s item_consume_clawther_coin 40

execute as @a[scores={item_consume_cold_down=0,clawther_coin_add=1..,soul_add=0}] at @s run function scr:clawther_coin/actionbar