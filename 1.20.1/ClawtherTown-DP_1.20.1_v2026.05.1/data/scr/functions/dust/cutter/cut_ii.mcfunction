scoreboard players add @p dust 10
playsound minecraft:item.totem.use block @a ~ ~ ~ 0.2
particle minecraft:angry_villager ~ ~1 ~ 0.3 0.3 0.3 0 10

advancement grant @p[distance=..10] only scr:stonecutter_used
execute as @p run function scr:dust/tellraw/get_dust_ii

kill @s