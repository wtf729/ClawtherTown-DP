scoreboard players remove @a[scores={item_consume_soul=1..,cd_case=0}] item_consume_soul 1
scoreboard players remove @a[scores={item_consume_cold_down=1..}] item_consume_cold_down 1
execute as @a[scores={item_consume_soul=1}] at @s run function scr:soul/soul_consume

execute as @a[scores={soul_title_countdown=1..}] at @s run function scr:soul/level_up_reward/title
scoreboard players remove @a[scores={soul_title_countdown=1..}] soul_title_countdown 1


execute as @a[nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{id:"scr:soul"}}]}] at @s run function scr:soul/soul_count
execute as @a[nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{id:"scr:soul_plus"}}]}] at @s run function scr:soul/soul_plus_count


execute as @a[scores={item_consume_cold_down=0,soul_add=1..,cd_case=0}] at @s run function scr:soul/actionbar

execute as @a at @s if score @s soul >= @s soul_require run function scr:soul/level_up