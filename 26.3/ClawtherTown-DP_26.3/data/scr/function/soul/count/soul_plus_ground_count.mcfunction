# Called once per item stack, as the item and at its position.
execute unless entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:iron_nugget",components:{"minecraft:item_name":"soul_plus"}}}] run return 0
# Select and retain exactly one recipient for this synchronous exchange.
tag @a[tag=scr.currency_recipient] remove scr.currency_recipient
execute unless entity @p[distance=..5] run return 0
tag @p[distance=..5] add scr.currency_recipient
scoreboard players set #scr_ground_taken item_count 0
execute store result score #scr_ground_taken item_count run function scr:currency/consume_ground_item
data remove storage scr:ground_exchange remaining
execute if score #scr_ground_taken item_count matches 1 as @a[tag=scr.currency_recipient] at @s run function scr:soul/count/soul_plus_count
tag @a[tag=scr.currency_recipient] remove scr.currency_recipient
scoreboard players reset #scr_ground_taken item_count
scoreboard players reset #scr_ground_remaining item_count
