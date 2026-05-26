execute as @e[type=minecraft:player] run scoreboard players set @s scr_glowing 1
execute as @e[type=minecraft:evoker] run scoreboard players set @s scr_glowing 1
execute as @e[type=minecraft:evoker,team=!dark_red] run team join dark_red
execute as @e[type=minecraft:pillager] run scoreboard players set @s scr_glowing 1
execute as @e[type=minecraft:pillager,team=!dark_red] run team join dark_red
execute as @e[type=minecraft:vindicator] run scoreboard players set @s scr_glowing 1
execute as @e[type=minecraft:vindicator,team=!dark_red] run team join dark_red
execute as @e[type=minecraft:ravager] run scoreboard players set @s scr_glowing 1
execute as @e[type=minecraft:ravager,team=!dark_red] run team join dark_red
execute as @e[type=minecraft:vex] run scoreboard players set @s scr_glowing 1
execute as @e[type=minecraft:vex,team=!dark_red] run team join dark_red
execute as @e[type=minecraft:phantom] run scoreboard players set @s scr_glowing 1
execute as @e[type=minecraft:phantom,team=!dark_red] run team join dark_red
execute as @e[tag=zombie_v] run scoreboard players set @s scr_glowing 1
execute as @e[tag=zombie_v,team=!red] run team join red
execute as @e[tag=zombie_rare] run scoreboard players set @s scr_glowing 1
execute as @e[tag=zombie_rare,team=!aqua] run team join aqua
execute as @e[tag=creeper_v] run scoreboard players set @s scr_glowing 1
execute as @e[tag=creeper_v,team=!red] run team join red
execute as @e[tag=creeper_rare] run scoreboard players set @s scr_glowing 1
execute as @e[tag=creeper_rare,team=!aqua] run team join aqua
execute as @e[tag=spider_rare] run scoreboard players set @s scr_glowing 1
execute as @e[tag=spider_rare,team=!aqua] run team join aqua
execute as @e[tag=pig_rare] run scoreboard players set @s scr_glowing 1
execute as @e[tag=pig_rare,team=!aqua] run team join aqua

effect give @e[scores={scr_glowing=1}] minecraft:glowing infinite 0 true