kill @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:redstone_block",Count:1b}}]
loot spawn ~ ~ ~ loot scr:tools/clawther_pickaxe/clawther_pickaxe_x_slow
playsound minecraft:block.anvil.use block @a ~ ~ ~ 0.3
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.3 0.3 0 10

advancement grant @p[distance=..10] only scr:ground_craft_used
advancement grant @p[distance=..10] only scr:clawther_pickaxe_slow

kill @s