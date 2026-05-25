scoreboard players remove @a[scores={item_consume_clawther_coin=1..,item_consume_cold_down=0,soul_add=0,cd_case=0}] item_consume_clawther_coin 1
execute as @a[scores={item_consume_clawther_coin=1,item_consume_cold_down=0,soul_add=0}] at @s run function scr:clawther_coin/clawther_coin_consume

execute as @a[predicate=scr:inventory/clawther_coin] at @s run function scr:clawther_coin/count/clawther_coin_inventory_count
execute as @a[predicate=scr:inventory/clawther_coin_plus] at @s run function scr:clawther_coin/count/clawther_coin_plus_inventory_count
execute as @a at @s as @e[type=minecraft:item,distance=..5,nbt={Item:{id:"minecraft:gold_nugget",tag:{id:"scr:clawther_coin"}}}] run function scr:clawther_coin/count/clawther_coin_ground_count
execute as @a at @s as @e[type=minecraft:item,distance=..5,nbt={Item:{id:"minecraft:gold_nugget",tag:{id:"scr:clawther_coin_plus"}}}] run function scr:clawther_coin/count/clawther_coin_plus_ground_count

execute as @a[scores={item_consume_cold_down=0,clawther_coin_add=1..,soul_add=0,cd_case=0}] at @s run function scr:clawther_coin/actionbar