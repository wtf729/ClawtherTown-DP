#村民死亡检测
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:stick",components:{"minecraft:custom_data":{villager_death:1b}}}}] at @s run function scr:villager/died

#村民食物捡起
execute as @e[type=item] at @s if items entity @s contents #scr:villager_food if entity @e[type=villager,distance=..0.7] run function scr:villager/item_inject