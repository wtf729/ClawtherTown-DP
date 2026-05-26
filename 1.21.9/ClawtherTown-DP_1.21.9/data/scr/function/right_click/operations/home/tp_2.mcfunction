tag @s add homes.subject
kill @e[type=minecraft:marker,tag=homes.destination]
execute as @e[type=minecraft:marker,tag=homes.dimension] run function scr:right_click/operations/home/tp_3
execute unless entity @e[type=minecraft:marker,tag=homes.destination,limit=1] run tellraw @s {"text":"目的地尚未加载! 请再试一次!","color":"red"}
execute as @e[type=minecraft:marker,tag=homes.destination,limit=1] run function scr:right_click/operations/home/tp_4
tag @s remove homes.subject