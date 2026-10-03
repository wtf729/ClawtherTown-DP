tag @s add back.subject
kill @e[type=minecraft:marker,tag=back.destination]
execute as @e[type=minecraft:marker,tag=back.dimension] run function back:try_to_summon_destination
execute unless entity @e[type=minecraft:marker,tag=back.destination,limit=1] run tellraw @s {"text":"目标位置尚未加载, 再试一次吧!","color":"red"}
execute as @e[type=minecraft:marker,tag=back.destination,limit=1] run function back:set_destination
tag @s remove back.subject