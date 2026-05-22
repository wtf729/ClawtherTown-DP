execute as @e[type=minecraft:tnt_minecart] run scoreboard players set @s scr_kill 1
execute as @e[type=minecraft:tnt] run scoreboard players set @s scr_kill 0

execute as @e[scores={scr_kill=1}] run kill @s