kill @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:firework_star",Count:1b,tag:{id:"scr:z1009"}}}]
loot spawn ~ ~ ~ loot scr:combat/obsidian_netherite_sword/obsidian_netherite_sword_xiii_custom_i
playsound minecraft:block.anvil.use block @a ~ ~ ~ 0.3
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.3 0.3 0 10

advancement grant @p[distance=..10] only scr:ground_craft_used
advancement grant @p[distance=..10] only scr:obsidian_netherite_sword_skin

kill @s