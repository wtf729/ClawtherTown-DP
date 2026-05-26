execute as @e[type=minecraft:player] run scoreboard players set @s scraftglowing 1
execute as @e[type=minecraft:evoker] run scoreboard players set @s scraftglowing 1
execute as @e[type=minecraft:evoker,team=!dark_red] run team join dark_red
execute as @e[type=minecraft:pillager] run scoreboard players set @s scraftglowing 1
execute as @e[type=minecraft:pillager,team=!dark_red] run team join dark_red
execute as @e[type=minecraft:vindicator] run scoreboard players set @s scraftglowing 1
execute as @e[type=minecraft:vindicator,team=!dark_red] run team join dark_red
execute as @e[type=minecraft:ravager] run scoreboard players set @s scraftglowing 1
execute as @e[type=minecraft:ravager,team=!dark_red] run team join dark_red
execute as @e[type=minecraft:vex] run scoreboard players set @s scraftglowing 1
execute as @e[type=minecraft:vex,team=!dark_red] run team join dark_red
execute as @e[type=minecraft:phantom] run scoreboard players set @s scraftglowing 1
execute as @e[type=minecraft:phantom,team=!dark_red] run team join dark_red


# execute as @e[type=goety:ripper] run scoreboard players set @s scraftglowing 1
# execute as @e[type=goety:ripper,team=!dark_red] run team join dark_red
# execute as @e[type=goety:conquillager] run scoreboard players set @s scraftglowing 1
# execute as @e[type=goety:conquillager,team=!dark_red] run team join dark_red
# execute as @e[type=goety:storm_caster] run scoreboard players set @s scraftglowing 1
# execute as @e[type=goety:storm_caster,team=!dark_red] run team join dark_red
# execute as @e[type=goety:cryologer] run scoreboard players set @s scraftglowing 1
# execute as @e[type=goety:cryologer,team=!dark_red] run team join dark_red
# execute as @e[type=goety:preacher] run scoreboard players set @s scraftglowing 1
# execute as @e[type=goety:preacher,team=!dark_red] run team join dark_red
# execute as @e[type=goety:piker] run scoreboard players set @s scraftglowing 1
# execute as @e[type=goety:piker,team=!dark_red] run team join dark_red
# execute as @e[type=goety:inquillager] run scoreboard players set @s scraftglowing 1
# execute as @e[type=goety:inquillager,team=!dark_red] run team join dark_red
# execute as @e[type=goety:warlock] run scoreboard players set @s scraftglowing 1
# execute as @e[type=goety:warlock,team=!dark_red] run team join dark_red
# execute as @e[type=goety:crusher] run scoreboard players set @s scraftglowing 1
# execute as @e[type=goety:crusher,team=!dark_red] run team join dark_red
# execute as @e[type=goety:sorcerer] run scoreboard players set @s scraftglowing 1
# execute as @e[type=goety:sorcerer,team=!dark_red] run team join dark_red
# execute as @e[type=goety:envioker] run scoreboard players set @s scraftglowing 1
# execute as @e[type=goety:envioker,team=!dark_red] run team join dark_red
# execute as @e[type=born_in_chaos_v1:missioner] run scoreboard players set @s scraftglowing 1
# execute as @e[type=born_in_chaos_v1:missioner,team=!dark_red] run team join dark_red



execute as @e[tag=zombie_v] run scoreboard players set @s scraftglowing 1
execute as @e[tag=zombie_v,team=!red] run team join red
execute as @e[tag=zombie_rare] run scoreboard players set @s scraftglowing 1
execute as @e[tag=zombie_rare,team=!aqua] run team join aqua
execute as @e[tag=creeper_v] run scoreboard players set @s scraftglowing 1
execute as @e[tag=creeper_v,team=!red] run team join red
execute as @e[tag=creeper_rare] run scoreboard players set @s scraftglowing 1
execute as @e[tag=creeper_rare,team=!aqua] run team join aqua

effect give @e[scores={scraftglowing=1}] minecraft:glowing infinite 0 true