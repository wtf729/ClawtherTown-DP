execute as @e[type=minecraft:minecart] run scoreboard players set @s scraftmute 1
execute as @e[type=minecraft:chest_minecart] run scoreboard players set @s scraftmute 1
execute as @e[type=minecraft:furnace_minecart] run scoreboard players set @s scraftmute 1
execute as @e[type=minecraft:tnt_minecart] run scoreboard players set @s scraftmute 1
execute as @e[type=minecraft:hopper_minecart] run scoreboard players set @s scraftmute 1

execute as @e[scores={scraftmute=1}] run data merge entity @s {Silent:1}