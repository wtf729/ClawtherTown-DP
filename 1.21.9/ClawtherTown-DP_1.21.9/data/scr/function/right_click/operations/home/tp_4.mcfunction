execute unless score #cooldown homes.config matches 0 run scoreboard players operation @a[tag=homes.subject,limit=1] homes.cooldown = #cooldown homes.config
execute as @a[scores={home_affected=1}] at @s run function back:set_back
data modify entity @s Pos set from storage homes:storage players[-1].homes[-1].pos
data modify entity @s Rotation set from storage homes:storage players[-1].homes[-1].rot
tp @e[scores={home_affected=1}] @s
scoreboard objectives remove home_affected
scoreboard objectives add home_affected dummy
kill @s