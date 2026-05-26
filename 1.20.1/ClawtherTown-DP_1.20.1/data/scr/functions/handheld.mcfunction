execute as @a[predicate=scr:handheld/offhand/totem_of_void,gamemode=creative,scores={superop=1}] at @s run fill ~5 ~3 ~5 ~-5 ~-3 ~-5 minecraft:air
execute as @a[predicate=scr:handheld/offhand/totem_of_wildfire,gamemode=creative] at @s run fill ~20 ~5 ~20 ~-20 ~-5 ~-20 minecraft:air replace #scr:wildfire

execute as @a[predicate=scr:handheld/mainhand/totem_of_haste_i] run effect give @s minecraft:haste 17 0 true
execute as @a[predicate=scr:handheld/offhand/totem_of_haste_i] run effect give @s minecraft:haste 17 0 true
execute as @a[predicate=scr:handheld/mainhand/totem_of_strength_i] run effect give @s minecraft:strength 17 0 true
execute as @a[predicate=scr:handheld/offhand/totem_of_strength_i] run effect give @s minecraft:strength 17 0 true
execute as @a[predicate=scr:handheld/mainhand/totem_of_resistance_ii] run effect give @s minecraft:resistance 17 1 true
execute as @a[predicate=scr:handheld/offhand/totem_of_resistance_ii] run effect give @s minecraft:resistance 17 1 true