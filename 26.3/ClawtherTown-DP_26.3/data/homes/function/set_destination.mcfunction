execute unless score #cooldown homes.config matches 0 run scoreboard players operation @a[tag=homes.subject,limit=1] homes.cooldown = #cooldown homes.config
execute as @a[tag=homes.subject,limit=1] at @s run function back:set_back
data modify entity @s Pos set from storage homes:storage players[-1].homes[-1].pos
data modify entity @s Rotation set from storage homes:storage players[-1].homes[-1].rot
execute store success score #home_tp scr_tk run tp @a[tag=homes.subject,limit=1] @s
execute if score #home_tp scr_tk matches 1 as @a[tag=homes.subject,limit=1] at @s run function scr_task:event/home_returned
kill @s
