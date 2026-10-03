# Synchronous helper: return 1 only after removing one item successfully.
# Scratch holders use the existing item_count objective; caller clears them.
execute unless entity @s[type=minecraft:item] run return 0
scoreboard players set #scr_ground_remaining item_count 0
execute store result score #scr_ground_remaining item_count run data get entity @s Item.count
execute unless score #scr_ground_remaining item_count matches 1.. run return 0
# Do not write an invalid zero-sized stack. Remove the final item directly.
execute if score #scr_ground_remaining item_count matches 1 run return run kill @s
scoreboard players remove #scr_ground_remaining item_count 1
execute store result storage scr:ground_exchange remaining int 1 run scoreboard players get #scr_ground_remaining item_count
return run data modify entity @s Item.count set from storage scr:ground_exchange remaining
