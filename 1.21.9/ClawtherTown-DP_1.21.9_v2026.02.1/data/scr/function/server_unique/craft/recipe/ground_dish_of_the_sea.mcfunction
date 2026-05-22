kill @e[type=minecraft:item,limit=1,distance=..1,nbt={Item:{id:"minecraft:salmon",count:1}}]
kill @e[type=minecraft:item,limit=1,distance=..1,nbt={Item:{id:"minecraft:pufferfish",count:1}}]
kill @e[type=minecraft:item,limit=1,distance=..1,nbt={Item:{id:"minecraft:potato",count:1}}]
loot spawn ~ ~ ~ loot scr:food/dish_of_the_sea
playsound minecraft:block.anvil.use block @a ~ ~ ~ 0.3
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.3 0.3 0 10

advancement grant @p[distance=..10] only scr:ground_craft_used

kill @s


