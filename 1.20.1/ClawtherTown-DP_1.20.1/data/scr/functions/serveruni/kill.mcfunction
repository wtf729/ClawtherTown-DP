execute as @e[type=minecraft:tnt_minecart] run scoreboard players set @s scraftkill 1
execute as @e[type=minecraft:tnt] run scoreboard players set @s scraftkill 0

execute as @e[scores={scraftkill=1}] run kill @s