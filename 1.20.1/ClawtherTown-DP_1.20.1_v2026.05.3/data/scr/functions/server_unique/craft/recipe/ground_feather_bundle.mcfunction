kill @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:stick",Count:1b}}]
loot spawn ~ ~ ~ loot scr:wing/feather_bundle
playsound minecraft:block.anvil.use block @a ~ ~ ~ 0.3
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.3 0.3 0 10

advancement grant @p[distance=..10] only scr:ground_craft_used

kill @s