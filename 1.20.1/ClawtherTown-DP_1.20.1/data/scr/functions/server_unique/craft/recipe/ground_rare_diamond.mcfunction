kill @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:book",Count:1b}}]
loot spawn ~ ~ ~ loot scr:ingredients/rare_diamond
playsound minecraft:block.anvil.use block @a ~ ~ ~ 0.3
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.3 0.3 0 10

advancement grant @p[distance=..10] only scr:ground_craft_used
advancement grant @p[distance=..10] only scr:rare_ore_crafted

kill @s