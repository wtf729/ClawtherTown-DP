kill @e[type=minecraft:item,limit=1,distance=..1,nbt={Item:{id:"minecraft:iron_ingot",count:1}}]
loot spawn ~ ~ ~ loot scr:tools/clawther_pickaxe/clawther_pickaxe_x
playsound minecraft:block.anvil.use block @a ~ ~ ~ 0.3
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.3 0.3 0 10

advancement grant @p[distance=..10] only scr:ground_craft_used

kill @s