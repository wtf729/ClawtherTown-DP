execute as @s store result score @s item_count run data get entity @s Item.Count


execute as @p at @s run function scr:clawther_coin/count/clawther_coin_plus_count


scoreboard players remove @s item_count 1
execute store result entity @s Item.Count int 1 run scoreboard players get @s item_count
execute as @s if score @s item_count matches 0 run kill @s