scoreboard players operation @s home_target = #home homes.dummy
scoreboard players set @s homes.delay 0
execute store result score @s homes.x run data get entity @s Pos[0] 10
execute store result score @s homes.y run data get entity @s Pos[1] 10
execute store result score @s homes.z run data get entity @s Pos[2] 10
execute if data storage homes:storage players[-1].homes[-1].name run tag @s add homes.nameSet
execute if entity @s[tag=homes.nameSet] run tellraw @s [{"text":"正在传送至","color":"gold"},{"storage":"homes:storage","nbt":"players[-1].homes[-1].name","interpret":true,"color":"yellow"},{"text":"...","color":"gold"}]
execute unless entity @s[tag=homes.nameSet] if score #home homes.dummy matches 1 run tellraw @s [{"text":"正在传送至","color":"gold"},{"text":"Home","color":"yellow"},{"text":"...","color":"gold"}]
execute unless entity @s[tag=homes.nameSet] unless score #home homes.dummy matches 1 run tellraw @s [{"text":"正在传送至","color":"gold"},{"text":"Home ","color":"yellow"},{"score":{"name":"#home","objective":"homes.dummy"},"color":"yellow"},{"text":"...","color":"gold"}]
tag @s remove homes.nameSet


function homes:rotate/players
scoreboard players operation #home homes.dummy = @s home_target
scoreboard players set #success homes.dummy 0
execute store result score #value homes.dummy run data get entity @s Pos[1] 10
execute if score #value homes.dummy = @s homes.y run function homes:check_x
scoreboard players reset @s homes.x
scoreboard players reset @s homes.y
scoreboard players reset @s homes.z
execute if score #success homes.dummy matches 0 run tellraw @s [{"text":"你必须站立不动才能进行传送!","color":"red"}]
execute unless score #success homes.dummy matches 0 run function scr:right_click/operations/home/tp_2
scoreboard players reset @s homes.delay
scoreboard players reset @s home_target