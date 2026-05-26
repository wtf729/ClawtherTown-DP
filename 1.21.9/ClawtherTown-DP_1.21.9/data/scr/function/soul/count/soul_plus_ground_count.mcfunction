execute as @s store result score @s item_count run data get entity @s Item.count


execute as @p at @s run function scr:soul/count/soul_plus_count


scoreboard players remove @s item_count 1
execute store result entity @s Item.count int 1 run scoreboard players get @s item_count
execute as @s if score @s item_count matches 0 run kill @s