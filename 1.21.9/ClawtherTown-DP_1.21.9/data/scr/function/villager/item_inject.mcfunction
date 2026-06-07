data modify entity @e[type=villager,distance=..0.5,limit=1,sort=nearest] Inventory append from entity @s Item

playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.5 1

kill @s